//
//  CustomButton.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "CustomButton.h"
#import "UIColor+ColorSet.h"

@implementation CustomButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setDefaultTint];
        [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
        [self setDefaultTint];
        
        self.layer.cornerRadius = 10;
        self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
        self.layer.backgroundColor = [UIColor whiteColor].CGColor;
        self.layer.shadowRadius = 1;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.masksToBounds = NO;
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
    [self setDefaultTint];
    
    self.layer.cornerRadius = 10;
    self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    self.layer.shadowRadius = 1;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.masksToBounds = NO;
}

- (void)setDefaultTint {
    self.layer.shadowRadius = 2;
    self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.layer.shadowOpacity = 2;
    self.alpha = 1;
    [self setEnabled:YES];
}

- (void)setHighlightedTint {
    self.layer.shadowRadius = 2;
    self.layer.shadowColor = [UIColor lightGreenSea].CGColor;
    self.layer.shadowOpacity = 2;
    self.alpha = 1;
    self.titleLabel.textColor = [UIColor lightGreenSea];
    [self setEnabled:YES];
}

- (void)setDisabledTint {
    self.layer.shadowRadius = 2;
    self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.layer.shadowOpacity = 2;
    self.alpha = 0.5;
    [self setEnabled:NO];
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        [self setHighlightedTint];
    } else {
        if (self.isEnabled) {
            [self setDefaultTint];
        } else {
            [self setDisabledTint];
        }
    }
}





@end
