//
//  JTViewToImageViewController.m
//  SpecUsage
//
//  Created by Jamz Tang on 14/10/13.
//  Copyright (c) 2013 Jamz Tang. All rights reserved.
//

#import "JTViewToImageViewController.h"
#import "UIView-JTViewToImage.h"

@interface JTViewToImageViewController ()

@end

@implementation JTViewToImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)legacyButtonDidPress:(id)sender {
//    self.imageView.image = nil;
    CFTimeInterval time = CFAbsoluteTimeGetCurrent();
    self.imageView.image = [self.view.window toImageWithScale:0
                                                       legacy:YES];
    
    CFTimeInterval duration = CFAbsoluteTimeGetCurrent() - time;
    NSLog(@"time %f", duration);
    
    self.label.text = [NSString stringWithFormat:@"%f s", duration];

}

- (IBAction)snapButtonDidPress:(id)sender {
    CFTimeInterval time = CFAbsoluteTimeGetCurrent();
    self.imageView.image = [self.view.window toImageWithScale:0
                                                       legacy:NO];
    CFTimeInterval duration = CFAbsoluteTimeGetCurrent() - time;
    NSLog(@"time %f", duration);
    
    self.label.text = [NSString stringWithFormat:@"%f s", duration];
}

@end
