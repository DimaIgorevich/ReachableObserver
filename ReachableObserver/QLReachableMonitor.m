//
//  QLReachableMonitor.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "AFNetworkReachabilityManager.h"
#import "QLReachableMonitor.h"
#import "QLReachableViewDefault.h"
#import "UINavigationController+RootViewController.h"
#import "QLReachableViewHelper.h"

static QLReachableView *_reachableView = nil;

@implementation QLReachableMonitor

+ (void)configureWihtView:(nullable QLReachableView *)reachableView {
    const CGRect frame = CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds));
    if (_reachableView == nil) {
        if (reachableView == nil) {
            _reachableView = [[QLReachableViewDefault alloc] initWithFrame:frame];
        } else {
            reachableView.frame = frame;
            _reachableView = reachableView;
        }
    }
    
    [self observeReachable];
}

+ (void)observeReachable {
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        if (status == AFNetworkReachabilityStatusNotReachable) {
            [self showReachableView];
        } else {
            [self hideReachableView];
        }
    }];
}

+ (void)refreshStatus {
    if ([[AFNetworkReachabilityManager sharedManager] networkReachabilityStatus] == AFNetworkReachabilityStatusNotReachable) {
        [self showReachableView];
    } else {
        [self hideReachableView];
    }
}

#pragma mark - Helpers

+ (void)showReachableView {
    if (![[UINavigationController rootViewController].view viewWithTag:kQLReachableViewTag]) {
        [QLReachableViewHelper animationInView:_reachableView inParent:[UINavigationController rootViewController].view];
    }
}

+ (void)hideReachableView {
    if ([[UINavigationController rootViewController].view viewWithTag:kQLReachableViewTag]) {
        [QLReachableViewHelper animationOutView:_reachableView inParent:[UINavigationController rootViewController].view];
    }
}
    
@end
