/*
 * This file is part of the http://ioscodesnippet.com
 * (c) Jamz Tang <jamz@jamztang.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "UIView-JTViewToImage.h"
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
