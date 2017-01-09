//
//  BaseViewController.h
//  NavigationPresent
//
//  Created by kamous on 2017/1/8.
//  Copyright © 2017年 kamous. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)presentViewController:(UIViewController *)viewControllerToPresent
                     animated:(BOOL)animated
                   completion:(void (^)(void))completion
                    pushStyle:(BOOL)isPushStyle;

@end
