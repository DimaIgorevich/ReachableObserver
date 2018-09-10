//
//  QLReachableMonitor.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "QLReachableMonitor.h"
#import "UINavigationController+RootViewController.h"
#import <AFNetworking.h>

static QLReachableView *_reachableView = nil;

@implementation QLReachableMonitor

+ (void)configureWihtView:(nullable QLReachableView *)reachableView {
    const CGRect frame = CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].applicationFrame), CGRectGetHeight([UIScreen mainScreen].applicationFrame));
    if (_reachableView == nil) {
        if (reachableView == nil) {
            _reachableView = [[QLReachableView alloc] initWithFrame:frame];
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
            //NEED SHOW VIEW WITH NOT INTERNET CONNECTION
            [self showReachableView];
        } else {
            //NEED HIDE VIEW WITH NOT INTERNET CONNECTION
            [self hideReachableView];
        }
    }];
}

+ (void)refreshStatus {
    if ([[AFNetworkReachabilityManager sharedManager] networkReachabilityStatus] == AFNetworkReachabilityStatusNotReachable) {
        //NEED SHOW VIEW WITH NOT INTERNET CONNECTION
        [self showReachableView];
    } else {
        //NEED HIDE VIEW WITH NOT INTERNET CONNECTION
        [self hideReachableView];
    }
}

#pragma mark - Helpers

+ (void)showReachableView {
    if (![[UINavigationController rootViewController].view viewWithTag:kQLReachableViewTag]) {
        [[UINavigationController rootViewController].view addSubview:_reachableView];
    }
}

+ (void)hideReachableView {
    if ([[UINavigationController rootViewController].view viewWithTag:kQLReachableViewTag]) {
        [_reachableView removeFromSuperview];
    }
}
    
@end
