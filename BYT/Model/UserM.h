//
// Created by chengxin on 16/3/21.
// Copyright (c) 2016 Pikdays. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UserM : NSObject

@property(readwrite, nonatomic, copy) NSString *status; // 登录状态

@property(readwrite, nonatomic, copy) NSString *email; // 邮箱
@property(readwrite, nonatomic, copy) NSString *phoneNumber; // 手机号
@property(readwrite, nonatomic, copy) NSString *userName; // 用户名

@end