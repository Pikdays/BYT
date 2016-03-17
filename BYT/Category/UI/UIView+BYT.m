//
//  UIView+BYT.m
//  GenericFramework
//
//  Created by chengxin on 16/1/13.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import "UIView+BYT.h"

@implementation UIView (BYT)

- (void)setCornerRadius:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (void)setCornerRadius:(CGFloat)radius roundingCorners:(UIRectCorner)corners borderWidth:(CGFloat)width borderColor:(UIColor *)color {
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)].CGPath;
    maskLayer.borderWidth = width;
    maskLayer.borderColor = color.CGColor;

    self.layer.mask = maskLayer;
}

- (void)setCornerRadiusOnTop:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color {
    [self setCornerRadius:radius roundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight) borderWidth:width borderColor:color];
}

- (void)setCornerRadiusOnBottom:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color {
    [self setCornerRadius:radius roundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight) borderWidth:width borderColor:color];
}

- (void)setCorneRequalNone {
    self.layer.mask = nil;
}

@end
