//
// Created by chengxin on 16/1/22.
// Copyright (c) 2016 Grant. All rights reserved.
//

#import "NSBundle+BYT.h"


@implementation NSBundle (BYT)

#pragma mark - 获取版本号

+ (NSString *)getCurrentVersion {
    return [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
}

@end