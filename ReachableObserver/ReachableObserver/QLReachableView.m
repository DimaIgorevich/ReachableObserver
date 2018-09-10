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
    self.duration = 0.3;
    self.isShow = false;
    self.isAnimationReverse = true;
}

#pragma mark - QLReachableViewDelegate

- (void)refresh {
    [QLReachableMonitor refreshStatus];
}

@end
