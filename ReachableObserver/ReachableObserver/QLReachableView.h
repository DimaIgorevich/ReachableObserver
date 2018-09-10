//
//  QLReachableView.h
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, QLAnimationType) {
    //Push
    QLAnimationTypePushFromDown = 0, // default
    QLAnimationTypePushFromTop,
    QLAnimationTypePushFromLeft,
    QLAnimationTypePushFromRight,
    
    //Fade
    QLAnimationTypeFade,
    
    //Flip
    QLAnimationTypeFlipFromDown,
    QLAnimationTypeFlipFromTop,
    QLAnimationTypeFlipFromLeft,
    QLAnimationTypeFlipFromRight,
    
    //None
    QLAnimationTypeNone
};

FOUNDATION_EXTERN const NSInteger kQLReachableViewTag;

NS_SWIFT_NAME(ReachableViewDelegate)

@protocol QLReachableViewDelegate <NSObject>

- (void)refresh;

@end

NS_SWIFT_NAME(ReachableView)

@interface QLReachableView : UIView <QLReachableViewDelegate>

@property (nonatomic) CGFloat duration;

@property (nonatomic) BOOL isAnimationReverse;

@property (nonatomic) BOOL isShow;

@property (nonatomic) QLAnimationType animationTypeIn;

@property (nonatomic) QLAnimationType animationTypeOut;

- (void)commonInit;

@end
