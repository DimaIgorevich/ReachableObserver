//
//  QLReachableView.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "QLReachableView.h"
#import "QLReachableMonitor.h"

const NSInteger kQLReachableViewTag = 20001;

const CGFloat kQLReachableViewDurationDefault = 0.3;
const CGFloat kQLReachableViewDelayRefreshingDefault = 0.33;

@implementation QLReachableView

#pragma mark - Initialize

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.backgroundColor = [UIColor whiteColor];
    self.tag = kQLReachableViewTag;
    self.duration = kQLReachableViewDurationDefault;
    self.delayRefreshing = kQLReachableViewDelayRefreshingDefault;
    self.isShow = false;
    self.isAnimationReverse = true;
}

#pragma mark - QLReachableViewDelegate

- (void)refreshWithCompletion:(void (^ __nullable)(void))completion {
    [QLReachableMonitor refreshStatus];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.delayRefreshing * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (completion != nil) {
            completion();
        }
    });
}

@end
