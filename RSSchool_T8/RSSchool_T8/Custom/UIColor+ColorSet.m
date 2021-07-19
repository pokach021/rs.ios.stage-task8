//
//  UIColor+ColorSet.m
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import "UIColor+ColorSet.h"

@implementation UIColor (ColorSet)

+(UIColor * _Nullable) lightGreenSea {
    return [UIColor colorWithRed:0.13 green:0.692 blue:0.557 alpha:1];
}
+(UIColor * _Nullable) chillSky {
    return [UIColor colorWithRed:0 green:0.7 blue:1 alpha:1];
}

+ (NSArray *)paletteColors {
    return @[[UIColor colorWithRed:0.886 green:0.106 blue:0.173 alpha:1],
             [UIColor colorWithRed:0.243 green:0.09 blue:0.8 alpha:1],
             [UIColor colorWithRed:0 green:0.486 blue:0.215 alpha:1],
             [UIColor colorWithRed:0.616 green:0.616 blue:0.616 alpha:1],
             [UIColor colorWithRed:0.616 green:0.369 blue:0.918 alpha:1],
             [UIColor colorWithRed:1 green:0.478 blue:0.409 alpha:1],
             [UIColor colorWithRed:1 green:0.678 blue:0.329 alpha:1],
             [UIColor colorWithRed:0 green:0.682 blue:0.929 alpha:1],
             [UIColor colorWithRed:1 green:0.467 blue:0.635 alpha:1],
             [UIColor colorWithRed:0 green:0.18 blue:0.235 alpha:1],
             [UIColor colorWithRed:0.055 green:0.216 blue:0.94 alpha:1],
             [UIColor colorWithRed:0.38 green:0.059 blue:0/063 alpha:1]
    ];
}

@end
