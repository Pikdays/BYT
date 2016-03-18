//
//  NSNumber+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/13.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (BYT)

// 生成0-x之间的随机正整数
+ (int)byt_randomFromZeroToX:(int)x;

// 生成随机正整数
+ (int)byt_randomUInt;

// 通过arc4random() 获取0到x-1之间的整数的代码如下：
+ (int)byt_randomFromZeroToXReduceOne:(int)x;

// 获取1到x之间的整数的代码如下:
+ (int)byt_randomFromOneToX:(int)x;

// 最后如果想生成一个浮点数，可以在项目中定义如下宏：
+ (double)byt_randomFloat;

@end
