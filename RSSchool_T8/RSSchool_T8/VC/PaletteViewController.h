//
//  PaletteViewController.h
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/18/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaletteDelegate <NSObject>
- (void)paletteDidPick:(NSMutableOrderedSet<UIColor *>*)colors;
@end

@interface PaletteViewController : UIViewController

@property NSMutableOrderedSet<UIColor *>* pickedColors;
@property(weak) id<PaletteDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
