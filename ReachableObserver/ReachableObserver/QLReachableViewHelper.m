//
//  QLReachableViewHelper.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "QLReachableViewHelper.h"

@implementation QLReachableViewHelper

+ (void)animationInView:(QLReachableView *)view inParent:(UIView *)parent {
    switch (view.animationTypeIn) {
        case QLAnimationTypeNone: [self animationNone:view inParent:parent];
            break;
        case QLAnimationTypeFade: [self animationFade:view inParent:parent];
            break;
            //push
        case QLAnimationTypePushFromDown: [self animationPushFromDown:view inParent:parent];
            break;
        case QLAnimationTypePushFromTop: [self animationPushFromTop:view inParent:parent];
            break;
        case QLAnimationTypePushFromRight: [self animationPushFromRight:view inParent:parent];
            break;
        case QLAnimationTypePushFromLeft: [self animationPushFromLeft:view inParent:parent];
            break;
            //flip
        case QLAnimationTypeFlipFromTop: [self animationFlipFromTop:view inParent:parent];
            break;
        case QLAnimationTypeFlipFromDown: [self animationFlipFromDown:view inParent:parent];
            break;
        case QLAnimationTypeFlipFromLeft: [self animationFlipFromLeft:view inParent:parent];
            break;
        case QLAnimationTypeFlipFromRight: [self animationFlipFromRight:view inParent:parent];
            break;
    }
}

+ (void)animationOutView:(QLReachableView *)view inParent:(UIView *)parent {
    switch (view.animationTypeIn) {
        case QLAnimationTypeNone: [self animationNone:view inParent:parent];
            break;
        case QLAnimationTypeFade: [self animationFade:view inParent:parent];
            break;
            //push
        case QLAnimationTypePushFromDown: [self animationPushFromDown:view inParent:parent];
            break;
        case QLAnimationTypePushFromTop: [self animationPushFromTop:view inParent:parent];
            break;
        case QLAnimationTypePushFromRight: [self animationPushFromRight:view inParent:parent];
            break;
        case QLAnimationTypePushFromLeft: [self animationPushFromLeft:view inParent:parent];
            break;
            //flip
        case QLAnimationTypeFlipFromTop: [self animationFlipFromTop:view inParent:parent];
            break;
        case QLAnimationTypeFlipFromDown: [self animationFlipFromDown:view inParent:parent];
            break;
        case QLAnimationTypeFlipFromLeft: [self animationFlipFromLeft:view inParent:parent];
            break;
        case QLAnimationTypeFlipFromRight: [self animationFlipFromRight:view inParent:parent];
            break;
    }
}

#pragma mark - Helpers

+ (void)animationNone:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
        [view removeFromSuperview];
    } else {
        //show
        view.isShow = YES;
        [parent addSubview:view];
    }
}

+ (void)animationFade:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
        view.alpha = 1.0;
        [UIView animateWithDuration:view.duration animations:^{
            view.alpha = 0.0;
        } completion:^(BOOL finished) {
            [view removeFromSuperview];
        }];
    } else {
        //show
        view.isShow = YES;
        view.alpha = 0.0;
        [parent addSubview:view];
        [UIView animateWithDuration:view.duration animations:^{
            view.alpha = 1.0;
        }];
    }
}

//push

+ (void)animationPushFromDown:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
        [UIView animateWithDuration:view.duration animations:^{
            CGRect endFrame = CGRectMake(0, CGRectGetHeight(parent.frame), CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
            view.frame = endFrame;
        } completion:^(BOOL finished) {
            [view removeFromSuperview];
        }];
    } else {
        //show
        view.isShow = YES;
        CGRect startFrame = CGRectMake(0, parent.frame.size.height, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
        view.frame = startFrame;
        [parent addSubview:view];
        [UIView animateWithDuration:view.duration animations:^{
            CGRect endFrame = CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
            view.frame = endFrame;
        }];
    }
}

+ (void)animationPushFromTop:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

+ (void)animationPushFromRight:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

+ (void)animationPushFromLeft:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

//flip

+ (void)animationFlipFromTop:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

+ (void)animationFlipFromDown:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

+ (void)animationFlipFromLeft:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

+ (void)animationFlipFromRight:(QLReachableView *)view inParent:(UIView *)parent {
    if (view.isShow) {
        //hide
        view.isShow = NO;
    } else {
        //show
        view.isShow = YES;
    }
}

@end
