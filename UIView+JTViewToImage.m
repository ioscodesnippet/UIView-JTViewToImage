//
//  UIView+JTViewToImage.m
//
//  Created by James Tang on 25/08/2011.
//

#import "UIView+JTViewToImage.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (JTViewToImage)

- (UIImage *)toImage {
    return [self toImageWithScale:0];
}

- (UIImage *)toImageWithScale:(CGFloat)scale {
    // If scale is 0, it'll follows the screen scale for creating the bounds
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, scale);
    
    // - [CALayer renderInContext:] also renders subviews 
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];

    // Get the image out of the context
    UIImage *copied = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    // Return the result
    return copied;
}

@end
