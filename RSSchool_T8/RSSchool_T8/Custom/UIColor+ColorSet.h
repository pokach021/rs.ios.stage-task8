//
//  UIColor+ColorSet.h
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (ColorSet)

+(UIColor * _Nullable) lightGreenSea;
+(UIColor * _Nullable) chillSky;

@property (class, nonatomic, readonly) NSArray *paletteColors;

@end

NS_ASSUME_NONNULL_END
