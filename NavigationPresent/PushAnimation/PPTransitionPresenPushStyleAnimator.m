//
//  PPTransitionPresentingPushAnimator.m
//  NavigationPresent
//
//  Created by kamous on 2017/1/7.
//  Copyright © 2017年 kamous. All rights reserved.
//

#import "PPTransitionPresenPushStyleAnimator.h"


#define kPPTransitionPresenPushStyleDuration 0.3

@implementation PPTransitionPresenPushStyleAnimator

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return kPPTransitionPresenPushStyleDuration;
}


- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *container = [transitionContext containerView];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGRect fromVCRect = fromVC.view.frame;
    fromVCRect.origin.x = 0;
    fromVC.view.frame = fromVCRect;
    [container addSubview:toVC.view];
    
    CGRect toVCRect = toVC.view.frame;
    toVCRect.origin.x = screenWidth;
    toVC.view.frame = toVCRect;
    
    fromVCRect.origin.x = -screenWidth;
    toVCRect.origin.x = 0;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromVC.view.frame = fromVCRect;
        toVC.view.frame = toVCRect;
    } completion:^(BOOL finished){
        [fromVC.view removeFromSuperview];
        [transitionContext completeTransition:finished];//动画结束、取消必须调用
    }];
}
@end
