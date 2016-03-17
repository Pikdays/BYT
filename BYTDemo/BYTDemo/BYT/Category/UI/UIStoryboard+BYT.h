//
// Created by chengxin on 16/1/20.
// Copyright (c) 2016 Grant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "objc/runtime.h"

@interface UIStoryboard (BYT)

+ (UIViewController*)viewControllerFromStoryboardName:(NSString *)storyboardName className:(id)aClass;

@end