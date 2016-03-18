//
//  UIView+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/13.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BYT)

- (void)byt_setCornerRadius:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color;

- (void)byt_setCornerRadius:(CGFloat)radius roundingCorners:(UIRectCorner)corners borderWidth:(CGFloat)width borderColor:(UIColor *)color;

- (void)byt_setCornerRadiusOnTop:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color;

- (void)byt_setCornerRadiusOnBottom:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color;

- (void)byt_setCorneRequalNone;

@end
