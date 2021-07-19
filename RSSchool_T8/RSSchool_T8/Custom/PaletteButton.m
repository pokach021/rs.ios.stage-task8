//
//  PaletteButton.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/19/21.
//

#import "PaletteButton.h"

@implementation PaletteButton

- (void)commonInit{
    
    self.layer.cornerRadius = 10;
    self.layer.shadowRadius = 1;
    self.layer.shadowOpacity = 1;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.layer.backgroundColor = [UIColor whiteColor].CGColor;
    
    
}

-(void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
        self.layer.shadowRadius = 2;
        self.layer.shadowOpacity = 2;
        self.layer.shadowOffset = CGSizeMake(0, 0);
    } else {
        [self commonInit];
    }
}



- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}




@end
