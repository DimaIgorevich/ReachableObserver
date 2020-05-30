//
//  QLReachableViewDefault.m
//  ReachableObserver
//
//  Created by dima on 10.09.2018.
//  Copyright © 2018 com.QuilCode. All rights reserved.
//

#import "QLReachableViewDefault.h"

@implementation QLReachableViewDefault

#pragma mark - Initialize

- (void)commonInit {
    [super commonInit];
    self.backgroundColor = [UIColor whiteColor];
    [self addLabel];
}

#pragma mark - Helpers

- (void)addLabel {
    self.lblDescription = [[UILabel alloc] init];
    self.lblDescription.numberOfLines = 0;
    self.lblDescription.text = @"No Internet Connection =(";
    self.lblDescription.font = [UIFont systemFontOfSize:14.0];
    self.lblDescription.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.lblDescription];
    
    NSLayoutConstraint *centreHorizontalConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.lblDescription
                                                        attribute:NSLayoutAttributeCenterX
                                                        relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                        attribute:NSLayoutAttributeCenterX
                                                        multiplier:1.0
                                                        constant:0];
    NSLayoutConstraint *centreVerticalConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.lblDescription
                                                        attribute:NSLayoutAttributeCenterY
                                                        relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                        attribute:NSLayoutAttributeCenterY
                                                        multiplier:1.0
                                                        constant:0];
    [self addConstraints:@[centreHorizontalConstraint, centreVerticalConstraint]];
}

@end
