//
//  QLReachableView.h
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_SWIFT_NAME(ReachableViewDelegate)

@protocol QLReachableViewDelegate <NSObject>

- (void)refresh;

@end

NS_SWIFT_NAME(ReachableView)

@interface QLReachableView : UIView <QLReachableViewDelegate>

- (void)commonInit;

@end
