//
//  UINavigationController+RootViewController.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "UINavigationController+RootViewController.h"

@implementation UINavigationController (RootViewController)

#pragma mark - Getters

+ (UIViewController *)rootViewController {
    return [[UIApplication sharedApplication] delegate].window.rootViewController;
}

@end
