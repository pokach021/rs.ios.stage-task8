//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "ViewController.h"
#import "PaletteViewController.h"
#import "UIColor+ColorSet.h"
#import "CustomButton.h"
#import "CustomView+Landscape.h"
#import "CustomView+Planet.h"
#import "CustomView+Head.h"
#import "CustomView+Tree.h"
#import "RSSchool_T8-Swift.h"
#import "CustomView.h"

@interface ViewController ()

@property (strong, nonatomic) PaletteViewController *paletteVC;
@property (strong, nonatomic) TimerViewController *timerVC;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *drawingsButton;
@property (weak, nonatomic) IBOutlet CustomView *canvas;
@property (weak, nonatomic) IBOutlet CustomButton *paletteButton;
@property (weak, nonatomic) IBOutlet CustomButton *drawButton;
@property (weak, nonatomic) IBOutlet CustomButton *timerButton;
@property (weak, nonatomic) IBOutlet CustomButton *shareButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timerValue = 2;
    _drawing = @"Planet";
    [self setIdleState];
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f],
        NSForegroundColorAttributeName:[UIColor blackColor]}];
    
}
- (IBAction)openPaletteButtonTap:(id)sender {
    
    self.paletteVC = [[PaletteViewController alloc] init];
    [self addChildViewController:self.paletteVC];
    [self.view addSubview:self.paletteVC.view];
    [self.paletteVC didMoveToParentViewController:self];
}
- (IBAction)timerButtonTap:(id)sender {
    
    self.timerVC = [[TimerViewController alloc] init];
    self.timerVC.timerValue = [[NSNumber alloc] initWithFloat:_timerValue];
    self.timerVC.delegate = self;
    [self addChildViewController:self.timerVC];
    [self.view addSubview:self.timerVC.view];
    [self.timerVC didMoveToParentViewController:self];
    
}
- (IBAction)drawButtonTap:(id)sender {
    if ([self.drawButton.titleLabel.text isEqualToString:@"Draw"]) {
        [self setDrawState];
        
        if ([_drawing isEqualToString:@"Planet"]) {
            [self.canvas drawPlanetWithColors:[self generateColorsForLines]];
        } else if ([_drawing isEqualToString:@"Head"]) {
            [self.canvas drawHeadWithColors:[self generateColorsForLines]];
        } else if ([_drawing isEqualToString:@"Tree"]) {
            [self.canvas drawTreeWithColors:[self generateColorsForLines]];
        } else {
            [self.canvas drawLandscapeWithColors:[self generateColorsForLines]];
        }
            
        [_redrawTimer invalidate];
        [self setLayersStrokeEndTo:0];
        __block float stroke = 0;
        _redrawTimer = [NSTimer scheduledTimerWithTimeInterval:0.01667 repeats:YES block:^(NSTimer * _Nonnull timer) {
            stroke += (0.01667 / self->_timerValue);
            [self setLayersStrokeEndTo:stroke];
            if (stroke >= 1)  {
                [timer invalidate];
                self.drawButton.titleLabel.text = @"Reset";
                [sender setTitle:@"Reset" forState:UIControlStateNormal];
                [self setDoneState];
            }
        }];
    } else {
        [self setIdleState];
        [sender setTitle:@"Draw" forState:UIControlStateNormal];
        [self setLayersStrokeEndTo:0];
    }
    
}

- (IBAction)shareButtonTap:(id)sender {
    UIGraphicsBeginImageContext(self.canvas.frame.size);
    [self.canvas.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *canvasImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *pngData = UIImagePNGRepresentation(canvasImage);
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[pngData] applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)customBarButton{
    NSDictionary *fontDict = [NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Montserrat-Regular" size:17.0], NSFontAttributeName, nil];
    [self.drawingsButton setTitleTextAttributes: fontDict forState:UIControlStateNormal];
    [self.drawingsButton setTitleTextAttributes: fontDict forState:UIControlStateHighlighted];
}


- (void)setIdleState {
    [self.paletteButton setDefaultTint];
    [self.timerButton setDefaultTint];
    [self.drawButton setDefaultTint];
    [self.shareButton setDisabledTint];
}

- (void)setDrawState {
    [self.paletteButton setDisabledTint];
    [self.timerButton setDisabledTint];
    [self.drawButton setDisabledTint];
    [self.shareButton setDisabledTint];
}

- (void)setDoneState {
    [self.paletteButton setDisabledTint];
    [self.timerButton setDisabledTint];
    [self.drawButton setDefaultTint];
    [self.shareButton setDefaultTint];
}

- (void)setLayersStrokeEndTo:(float)strokeEnd {
    self.canvas.shape1Layer.strokeEnd = strokeEnd;
    self.canvas.shape2Layer.strokeEnd = strokeEnd;
    self.canvas.shape3Layer.strokeEnd = strokeEnd;
}

- (void)timerDidPickWithValue:(float)value {
    _timerValue = value;
}

- (NSMutableArray<UIColor *>*)generateColorsForLines {
    NSMutableArray<UIColor *>* lineColors = [[NSMutableArray alloc] initWithArray:[_pickedColors array]];
    while (lineColors.count < 3) {
        [lineColors addObject:[UIColor blackColor]];
    }
    return lineColors;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DrawingViewController *destVC = (DrawingViewController *)segue.destinationViewController;
    destVC.delegate = self;
    destVC.selectedDrawing = _drawing;
}

- (void)updateDrawingWithDrawing:(NSString * _Nonnull)drawing {
    _drawing = drawing;
}



@end
