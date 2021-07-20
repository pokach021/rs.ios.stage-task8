//
//  PaletteButtonView.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/20/21.
//

#import "PaletteButtonView.h"

@implementation PaletteButtonView

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    return view == self ? nil : view;
}

@end
