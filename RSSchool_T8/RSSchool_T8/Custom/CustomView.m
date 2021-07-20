//
//  CustomView.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "CustomView.h"
#import "UIColor+ColorSet.h"



@implementation CustomView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.shape1Layer = [[CAShapeLayer alloc] init];
        self.shape2Layer = [[CAShapeLayer alloc] init];
        self.shape3Layer = [[CAShapeLayer alloc] init];
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.layer.cornerRadius = 8;
    self.layer.shadowColor = [[UIColor chillSky]colorWithAlphaComponent:0.25].CGColor;
    self.layer.shadowRadius = 8;
    self.layer.shadowOpacity = 1;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.masksToBounds = NO;
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    
}

@end

