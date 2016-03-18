//
//  NSString+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/13.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (BYT)

// 计算文本高度
- (float)byt_heightWithFont:(UIFont *)font maxSize:(CGSize)maxSize andLinebreakMode:(NSLineBreakMode)linebreakMode;

// 移除最后一个字符
- (NSString *)byt_removeLastChar;

// 正则判断是否满足手机号码格式
+ (BOOL)byt_checkTelNumber:(NSString *)telNumber;

@end
