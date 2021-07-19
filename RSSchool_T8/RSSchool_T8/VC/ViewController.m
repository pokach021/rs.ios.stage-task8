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
#import "TimerViewController1.h"
#import "CustomView.h"

@interface ViewController ()

@property (strong, nonatomic) PaletteViewController *paletteVC;
@property (strong, nonatomic) TimerViewController *timerVC;
@property (strong, nonatomic) CustomView *drawingView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    [self addChildViewController:self.timerVC];
    [self.view addSubview:self.timerVC.view];
    [self.timerVC didMoveToParentViewController:self];
    
}
- (IBAction)drawButtonTap:(id)sender {
    
    
}





@end
