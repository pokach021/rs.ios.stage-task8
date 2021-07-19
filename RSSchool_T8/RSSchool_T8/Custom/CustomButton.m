//
//  CustomButton.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "CustomButton.h"
#import "UIColor+ColorSet.h"

@implementation CustomButton

- (void)commonInit {

    self.userInteractionEnabled = YES;
    self.layer.cornerRadius = 10;
    
    self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:18];
    [self setTitleColor:UIColor.lightGreenSea forState:UIControlStateNormal];
    
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.layer.shadowRadius = 1;
    self.layer.shadowOpacity = 2;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    
    
    
}

-(void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.layer.shadowColor = [UIColor lightGreenSea].CGColor;
        self.layer.shadowRadius = 2;
        self.layer.shadowOpacity = 2;
        self.layer.shadowOffset = CGSizeMake(0, 0);
    } else {
        [self commonInit];
    }
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    if (!enabled) {
        self.alpha = 0.5;
        self.layer.shadowRadius = 1;
        self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    } else {
        self.alpha = 1;
    }
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
 }

 - (id)initWithCoder:(NSCoder *)aDecoder {
     self = [super initWithCoder:aDecoder];
     if (self) {
        [self commonInit];
     }
     return self;
 }

@end
