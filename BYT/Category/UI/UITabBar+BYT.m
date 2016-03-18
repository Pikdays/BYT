//
// Created by chengxin on 16/1/27.
// Copyright (c) 2016 oschina. All rights reserved.
//

#import "UITabBar+BYT.h"


@implementation UITabBar (BYT)

+ (void)byt_setBarBackgroundColor:(UIColor *)barColor titleTextAttributesOnSelected:(NSDictionary *)titleTextAttributes iconColor:(UIColor *)iconColor {
    //TabBar的背景颜色
    [[UITabBar appearance] setBarTintColor:barColor];
    //TabBarItem选中的颜色
    [[UITabBarItem appearance] setTitleTextAttributes:titleTextAttributes forState:UIControlStateSelected];
    //TabBar选中图标的颜色,默认是蓝色
    [[UITabBar appearance] setTintColor:iconColor];
}


@end