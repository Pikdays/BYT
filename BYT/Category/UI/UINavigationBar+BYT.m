//
// Created by chengxin on 16/1/27.
// Copyright (c) 2016 oschina. All rights reserved.
//

#import "UINavigationBar+BYT.h"


@implementation UINavigationBar (BYT)

+ (void)byt_setBarBackgroundColor:(UIColor *)barColor titleTextAttributes:(NSDictionary *)titleTextAttributes itemColor:(UIColor *)itemColor {
    //导航条的背景颜色
    [[UINavigationBar appearance] setBarTintColor:barColor];
    //导航条上标题的颜色
    [[UINavigationBar appearance] setTitleTextAttributes:titleTextAttributes];
    //导航条上UIBarButtonItem颜色
    [[UINavigationBar appearance] setTintColor:itemColor];
}

@end