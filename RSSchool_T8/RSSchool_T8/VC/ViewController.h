//
//  ViewController.h
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import <UIKit/UIKit.h>
#import "PaletteViewController.h"
#import "RSSchool_T8-Swift.h"

@interface ViewController : UIViewController <UIViewControllerTransitioningDelegate, TimerDelegate, DrawingsDelegate>

@property(nonatomic, copy) NSOrderedSet<UIColor *>* pickedColors;
@property float timerValue;
@property(nonatomic, copy) NSString *drawing;
@property(nonatomic, copy) NSTimer  *redrawTimer;

@end

