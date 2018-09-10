//
//  QLReachableViewHelper.h
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QLReachableView.h"

@interface QLReachableViewHelper : NSObject

+ (void)animationInView:(QLReachableView *)view inParent:(UIView *)parent;

+ (void)animationOutView:(QLReachableView *)view inParent:(UIView *)parent;

@end
