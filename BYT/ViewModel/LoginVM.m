//
// Created by chengxin on 16/3/21.
// Copyright (c) 2016 Pikdays. All rights reserved.
//

#import "LoginVM.h"
#import "UserM.h"
#import "BYTHeader.h"

#define kLoginStatus @"login_status"
#define kLoginPreUserEmail @"pre_user_email"
#define kLoginUserDict @"user_dict"
#define kLoginDataListPath @"login_data_list_path.plist"

static UserM *currentLoginUser;

@implementation LoginVM

#pragma mark - ⊂((・猿・))⊃ LifeCycle

- (instancetype)init {
    self = [super init];
    if (self) {
        self.email = @"";
        self.userName = @"";
        self.phoneNumber = @"";

        self.password = @"";

        self.rememberMe = YES;
    }
    return self;
}

#pragma mark - ⊂((・猿・))⊃ Set_Get

- (NSString *)web_urlPath {
    NSString *s;
    return s; // 例: return @"api/v2/account/login";
}

- (NSDictionary *)web_params {
    NSMutableDictionary *p;
    return p;
}

// 提示信息, 需要验证码
- (NSString *)promptWithNeedCaptcha:(BOOL)needCaptcha {
    if (!_email || _email.length <= 0) {
        return @"请填写「手机号码/电子邮箱/个性后缀」";
    }
    if (!_password || _password.length <= 0) {
        return @"请填写密码";
    }
    if (needCaptcha && (!_captcha || _captcha.length <= 0)) {
        return @"请填写验证码";
    }
    return nil;
}

// 登录
+ (void)doLogin:(NSDictionary *)loginData {
    if (loginData) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:@YES forKey:kLoginStatus];
        [defaults setObject:loginData forKey:kLoginUserDict];
        [defaults synchronize];

        currentLoginUser = [UserM mj_objectWithKeyValues:loginData];

        [self saveLoginData:loginData];
    } else {
        [LoginVM doLogout];
    }
}

// 退出登录
+ (void)doLogout {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@NO forKey:kLoginStatus];
    [defaults synchronize];
}

// 登录状态, 是否已经登录
+ (BOOL)isLogined {
    NSNumber *loginStatus = [[NSUserDefaults standardUserDefaults] objectForKey:kLoginStatus];
    UserM *loginUser = [LoginVM currentLoginUser];

    if (loginStatus.boolValue && loginUser) {
        if (loginUser.status == nil && loginUser.status.integerValue == 0) {
            return NO;
        }
        return YES;
    } else {
        return NO;
    }
}

// 当前登录用户
+ (UserM *)currentLoginUser {
    if (!currentLoginUser) {
        NSDictionary *loginData = [[NSUserDefaults standardUserDefaults] objectForKey:kLoginUserDict];
        currentLoginUser = loginData ? [UserM mj_objectWithKeyValues:loginData] : nil;
    }
    return currentLoginUser;
}


// 保存数据
+ (BOOL)saveLoginData:(NSDictionary *)loginData {
    BOOL saved = NO;
    if (loginData) {
        NSMutableDictionary *loginDataList = [self readLoginData];
        UserM *user = [UserM mj_objectWithKeyValues:loginData];

        if (user.email.length > 0) {
            loginDataList[user.email] = loginData;
            saved = YES;
        }
        if (user.phoneNumber.length > 0) {
            loginDataList[user.phoneNumber] = loginData;
            saved = YES;
        }
        if (saved) {
            saved = [loginDataList writeToFile:[self loginDataListFilePath] atomically:YES];
        }
    }
    return saved;
}

// 读取数据
+ (NSMutableDictionary *)readLoginData {
    NSMutableDictionary *loginDataList = [NSMutableDictionary dictionaryWithContentsOfFile:[self loginDataListFilePath]];
    if (!loginDataList) {
        loginDataList = [NSMutableDictionary dictionary];
    }
    return loginDataList;
}

// 数据的文件路径
+ (NSString *)loginDataListFilePath {
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return [documentPath stringByAppendingPathComponent:kLoginDataListPath];
}

// 邮箱变更
+ (void)setPreUserEmail:(NSString *)emailStr {
    if (emailStr.length <= 0) {
        return;
    }
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:emailStr forKey:kLoginPreUserEmail];
    [defaults synchronize];
}

// 获取邮箱
+ (NSString *)preUserEmail {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults objectForKey:kLoginPreUserEmail];
}

@end