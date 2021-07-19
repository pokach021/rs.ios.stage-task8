//
//  TimerViewController.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "TimerViewController1.h"
#import "CustomButton.h"
#import "UIColor+ColorSet.h"

@interface TimerViewController ()

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, 333.5);
    
    self.view.layer.cornerRadius = 40;
    self.view.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.view.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.view.layer.shadowRadius = 8;
    self.view.layer.shadowOpacity = 1;
    self.view.layer.shadowOffset = CGSizeMake(0, 0);
    
    CustomButton *save = [[CustomButton alloc] initWithFrame:CGRectMake(250, 20, 85, 32)];
    [save setTitle:@"Save" forState:UIControlStateNormal];
    [self.view addSubview:save];
    [self.view bringSubviewToFront:save];
    [save addTarget:self action:@selector(saveButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    UISlider *timer = [[UISlider alloc] initWithFrame:CGRectMake(74, 112, 223, 4)];
    timer.minimumTrackTintColor = [UIColor lightGreenSea];
    timer.minimumValue = 1;
    timer.maximumValue = 5;
    [self.view addSubview:timer];
    [self.view bringSubviewToFront:timer];
    
    
    UIFont *labelFont = [UIFont fontWithName:@"Montserrat-Regular" size:18];
    
    UILabel *minVal = [[UILabel alloc]initWithFrame:CGRectMake(26, 103, 7, 22)];
    [minVal setText:@"1"];
    minVal.font = labelFont;
    [self.view addSubview:minVal];
    [self.view bringSubviewToFront:minVal];
    
    UILabel *maxVal = [[UILabel alloc]initWithFrame:CGRectMake(338, 103, 11, 22)];
    [maxVal setText:@"5"];
    maxVal.font = labelFont;
    [self.view addSubview:maxVal];
    [self.view bringSubviewToFront:maxVal];
    
    UILabel *currentVal = [[UILabel alloc]initWithFrame:CGRectMake(162, 161, 52, 22)];
    currentVal.text = [NSString stringWithFormat:@"%.2f s", timer.value];
    currentVal.font = labelFont;
    [self.view addSubview:currentVal];
    [self.view bringSubviewToFront:currentVal];
}

- (void)saveButtonTapped:(UIButton *)sender {
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

@end
