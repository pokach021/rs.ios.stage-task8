//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "PaletteViewController.h"
#import "CustomButton.h"
#import "PaletteButton.h"
#import "UIColor+ColorSet.h"


@interface PaletteViewController ()

@property (strong, nonatomic) UILabel *buttonLabel;
@property (strong, nonatomic) PaletteButton *button;

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // view
    self.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, 333.5);
    self.view.layer.cornerRadius = 40;
    self.view.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.view.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.view.layer.shadowRadius = 8;
    self.view.layer.shadowOpacity = 1;
    self.view.layer.shadowOffset = CGSizeMake(0, 0);
    // save button
    CustomButton *save = [[CustomButton alloc] initWithFrame:CGRectMake(250, 20, 85, 32)];
    [save setTitle:@"Save" forState:UIControlStateNormal];
    [self.view addSubview:save];
    [self.view bringSubviewToFront:save];
    [save addTarget:self action:@selector(saveButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    CGFloat x = 17;
    CGFloat y = 92;
    NSArray *colorsArray = [UIColor paletteColors];
    for (int i = 0; i < colorsArray.count ; i++) {
        if (x == 377) {
            x = 17;
            y = 152;
        }
        self.button = [[PaletteButton alloc] initWithFrame:CGRectMake(x, y, 40, 40)];
        [self.button addTarget:self action:@selector(paletteButtonTap:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.button];
        [self.view bringSubviewToFront:self.button];
        
        
        //        button.delegate = self;
        //        button.layer.borderWidth = 0.5;
        //        button.layer.cornerRadius = 10;
        //        button.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
        //        button.layer.shadowRadius = 2;
        //        button.layer.shadowOpacity = 1;
        //        button.layer.shadowOffset = CGSizeMake(0, 0);
       
        UIColor *backColor = colorsArray[i];
        
        self.buttonLabel = [[UILabel alloc]initWithFrame:CGRectMake(8, 8, 24, 24)];
        self.buttonLabel.layer.backgroundColor = backColor.CGColor;
        self.buttonLabel.layer.cornerRadius = 6;
        [self.button addSubview:self.buttonLabel];
        [self.button bringSubviewToFront:self.buttonLabel];
        
        x += 60;
        
        
    }
    
    
}

- (void)saveButtonTapped:(UIButton *)sender {
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}




@end
