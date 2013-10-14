//
//  JTViewToImageViewController.h
//  SpecUsage
//
//  Created by Jamz Tang on 14/10/13.
//  Copyright (c) 2013 Jamz Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JTViewToImageViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *label;

- (IBAction)snapButtonDidPress:(id)sender;
- (IBAction)legacyButtonDidPress:(id)sender;

@end
