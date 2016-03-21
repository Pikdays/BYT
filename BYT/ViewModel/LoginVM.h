//
// Created by chengxin on 16/3/21.
// Copyright (c) 2016 Pikdays. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserM;


@interface LoginVM : NSObject

@property(readwrite, nonatomic, copy) NSString *email; // 邮箱
@property(readwrite, nonatomic, copy) NSString *phoneNumber; // 手机号
@property(readwrite, nonatomic, copy) NSString *userName; // 用户名

@property(readwrite, nonatomic, copy) NSString *password; // 密码
@property(readwrite, nonatomic, copy) NSString *captcha; // 验证码

@property(readwrite, nonatomic, assign) BOOL rememberMe; // 记住密码

@property(readonly, nonatomic, strong) NSString *web_urlPath;
@property(readonly, nonatomic, strong) NSDictionary *web_params;

+ (BOOL)isLogined; // 登录状态

+ (UserM *)currentLoginUser;

+ (void)doLogin:(NSDictionary *)loginData;
+ (void)doLogout;

+ (BOOL)saveLoginData:(NSDictionary *)loginData;
+ (NSMutableDictionary *)readLoginData;
+ (NSString *)loginDataListFilePath;

+ (void)setPreUserEmail:(NSString *)emailStr;
+ (NSString *)preUserEmail;

@end