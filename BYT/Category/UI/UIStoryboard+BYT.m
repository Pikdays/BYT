//
// Created by chengxin on 16/1/20.
// Copyright (c) 2016 Grant. All rights reserved.
//

#import "UIStoryboard+BYT.h"


@implementation UIStoryboard (BYT)

+ (UIViewController *)byt_viewControllerFromStoryboardName:(NSString *)storyboardName className:(id)aClass {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    NSString *className = nil;

    if ([aClass isKindOfClass:[NSString class]]) {
        className = [NSString stringWithFormat:@"%@", aClass];
    } else {
        className = [NSString stringWithFormat:@"%s", class_getName([aClass class])];
    }

    return [storyboard instantiateViewControllerWithIdentifier:[NSString stringWithFormat:@"%@SBID", className]];
}

@end