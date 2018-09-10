//
//  QLReachableMonitor.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "QLReachableMonitor.h"
#import "QLReachableView.h"
#import "UINavigationController+RootViewController.h"

static QLReachableView *_reachableView = nil;

@implementation QLReachableMonitor

+ (void)configure {
    NSLog(@"configure");
}

+ (void)observeReachable {
//    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        if (status == AFNetworkReachabilityStatusNotReachable) {
//            //NEED SHOW VIEW WITH NOT INTERNET CONNECTION
//            [self showReachableView];
//        } else {
//            //NEED HIDE VIEW WITH NOT INTERNET CONNECTION
//            [self hideReachableView];
//        }
//    }];
}

+ (void)refreshStatus {
//    if ([[AFNetworkReachabilityManager sharedManager] networkReachabilityStatus] == AFNetworkReachabilityStatusNotReachable) {
//        //NEED SHOW VIEW WITH NOT INTERNET CONNECTION
//        [self showReachableView];
//    } else {
//        //NEED HIDE VIEW WITH NOT INTERNET CONNECTION
//        [self hideReachableView];
//    }
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
