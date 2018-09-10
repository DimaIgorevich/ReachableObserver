# ReachableObserver

[![Version](https://img.shields.io/cocoapods/v/ScalableContentScrollView.svg?style=flat)](https://cocoapods.org/pods/ReachableObserver)
[![License](https://img.shields.io/cocoapods/l/ScalableContentScrollView.svg?style=flat)](https://cocoapods.org/pods/ReachableObserver)
[![Platform](https://img.shields.io/cocoapods/p/ScalableContentScrollView.svg?style=flat)](https://cocoapods.org/pods/ReachableObserver)

ReachableObserver to show ReachableView if lost internet connection and hide it if internet connection recovered.

## Features

- [x] Setting 'duration' for animation
- [x] Setting 'delay' for update reachable status
- [x] Animation 'none'
- [x] Animation 'fade'
- [x] Animation 'push from down'
- [ ] Animation 'push from top'
- [ ] Animation 'push from left'
- [ ] Animation 'push from right'
- [ ] Animation 'flip from down'
- [ ] Animation 'flip from top'
- [ ] Animation 'flip from left'
- [ ] Animation 'flip from right'

## Requirements

- iOS 8.0+
- Xcode 8.0+

## Installation

**CocoaPods**

ReachableObserver is available through [CocoaPods](http://cocoapods.org).  

To install add the following line to your Podfile:

pod 'ReachableObserver'

## Usage

Follow the instructions below:

### Step 1: Configuration a ReachableMonitor object

```swift
// Swift

import ReachableObserver

ReachableMonitor.configureWihtView(nil) //or your custom view that child from QLReachableView

```

```objc
// Objective-C

#import <ReachableObserver.h>

[QLReachableMonitor configureWihtView:nil]; //or your custom view that child from QLReachableView

```

### Step 2: Custom ReachableView

```swift
// Swift

CustomReachableView: ReachableView {

//Custom properties

//Lifecycle

override func commomInit() {
super.commonInit()
//Initialize custom properties
}

}

```

```objc
// Objective-C

@interface CustomReachableView: ReachableView ()

//Custom properties

@end

@implementation

//Lifecycle

- (void)commonInit {
[super commonInit];
//Initialize custom properties
}

@end

```

## Customization

- [x] type of animation In/Out ReachableView
- [x] duration for animation
- [x] is need reverse animation
- [x] delay for update reachable status

## Authors

[Dima Rumiankov](https://github.com/DimaIgorevich) - iOS Developer ([LinkedIn](https://www.linkedin.com/in/dima-rumiankov-5902a7140/))

## Donation
If this project help you reduce time to develop, you can give me a cup of coffee :) 

### BTC: 1BuVQt6HnPRUBpq8sip3LRHy6xipptB1qh

### ETH: 0xA66bB583690546C481B825db6A0049311Afe969F

## License

Copyright (c) 2018 Dima Rumiankov dzhimasan@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
