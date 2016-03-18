//
// Created by chengxin on 16/1/20.
// Copyright (c) 2016 Grant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "objc/runtime.h"

#define BYTStoryboard(sb, vc) [[UIStoryboard storyboardWithName:sb bundle:nil] instantiateViewControllerWithIdentifier:vc];

@interface UIStoryboard (BYT)

+ (UIViewController*)byt_viewControllerFromStoryboardName:(NSString *)storyboardName className:(id)aClass;

@end