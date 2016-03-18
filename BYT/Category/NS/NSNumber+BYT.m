//
//  NSNumber+BYT.m
//  GenericFramework
//
//  Created by chengxin on 16/1/13.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import "NSNumber+BYT.h"

@implementation NSNumber (BYT)

// 生成0-x之间的随机正整数
+(int)byt_randomFromZeroToX:(int)x {
    return arc4random_uniform(x + 1);
}

// 生成随机正整数
+(int)byt_randomUInt {
    return arc4random();
}

// 通过arc4random() 获取0到x-1之间的整数的代码如下：
+ (int)byt_randomFromZeroToXReduceOne:(int)x {
    return arc4random() % x;
}

// 获取1到x之间的整数的代码如下:
+ (int)byt_randomFromOneToX:(int)x {
    return (arc4random() % x) + 1;
}

// 最后如果想生成一个浮点数，可以在项目中定义如下宏：
+ (double)byt_randomFloat {
#define ARC4RANDOM_MAX      0x100000000

    // 然后就可以使用arc4random() 来获取0到100之间浮点数了（精度是rand（）的两倍），代码如下：
    return floorf(((double)arc4random() / ARC4RANDOM_MAX) * 100.0f);
}


@end
