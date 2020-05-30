//
//  QLReachableMonitor.h
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QLReachableView.h"

NS_SWIFT_NAME(ReachableMonitor)

@interface QLReachableMonitor : NSObject
    
+ (void)configureWihtView:(nullable QLReachableView *)reachableView;
    
+ (void)refreshStatus;

@end
