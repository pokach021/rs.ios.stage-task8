//
//  PaintingDelegate.h
//  RSSchool_T8
//
//  Created by Andrew Pokachailo on 7/19/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaintingDelegate <NSObject>

-(void)paintingIsDrawing:(BOOL)check;

@end

NS_ASSUME_NONNULL_END
