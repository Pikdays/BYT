//
// Created by chengxin on 16/1/22.
// Copyright (c) 2016 Grant. All rights reserved.
//

//#import <Bugly/CrashReporter.h>
#import "UIResponder+BYT.h"
//#import <AFNetworking/AFNetworking.h>
#import "UIAlertView+BYT.h"


@implementation UIResponder (BYT)

//#pragma mark - 网络检测
//- (void)networkDetection {
//    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
//    AFNetworkReachabilityManager *reachabilityManager = [AFNetworkReachabilityManager sharedManager];
//    [reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//        if (status == AFNetworkReachabilityStatusNotReachable) {
//            // 网络无连接的提示
//            [UIAlertView showAlertViewWithTitle:@""
//                                        message:@"当前没有网络，请检查网络连接"
//                              cancelButtonTitle:nil
//                              otherButtonTitles:@[@"确定"]
//                                   clickedBlock:nil];
//        }
//    }];
//    [reachabilityManager startMonitoring];
//}

//#pragma mark - 腾讯Bugly
//- (void)setupBuglyWithAppId:(NSString *)appId {
//    [[CrashReporter sharedInstance] installWithAppId:appId];
//}


@end