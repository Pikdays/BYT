//
// Created by chengxin on 16/1/27.
// Copyright (c) 2016 oschina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UITabBar (BYT)

/**
 *  TabBar theme
 *
 *  @param barColor            背景
 *  @param titleTextAttributes Item选中的颜色
 *  @param iconColor           选中图标的颜色,默认是蓝色
 */
+ (void)byt_setBarBackgroundColor:(UIColor *)barColor titleTextAttributesOnSelected:(NSDictionary *)titleTextAttributes iconColor:(UIColor *)iconColor;

@end