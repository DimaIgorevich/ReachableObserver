//
//  QLReachableMonitor.h
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_SWIFT_NAME(ReachableMonitor)

@interface QLReachableMonitor : NSObject
    
+ (void)configure;
    
+ (void)refreshStatus;

@end
