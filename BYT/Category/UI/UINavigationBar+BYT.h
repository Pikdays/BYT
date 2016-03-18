//
// Created by chengxin on 16/1/27.
// Copyright (c) 2016 oschina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UINavigationBar (BYT)

/**
 *  导航条 Theme
 *
 *  @param barColor            背景颜色
 *  @param titleTextAttributes 标题的颜色
 *  @param itemColor           UIBarButtonItem颜色
 */
+ (void)byt_setBarBackgroundColor:(UIColor *)barColor titleTextAttributes:(NSDictionary *)titleTextAttributes itemColor:(UIColor *)itemColor;

@end