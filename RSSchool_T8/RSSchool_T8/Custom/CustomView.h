//
//  CustomView.h
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "PaintingDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomView : UIView

@property (assign, nonatomic) NSNumber *currentDrawing;

@property CAShapeLayer *shape1Layer;
@property CAShapeLayer *shape2Layer;
@property CAShapeLayer *shape3Layer;

@end

NS_ASSUME_NONNULL_END
