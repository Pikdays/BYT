//
// Created by Pikdays on 16/1/21.
// Copyright (c) 2016 Pikdays. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^UIAlertViewClickedBlock)(NSInteger buttonIndex);

@interface UIAlertView (BYT)

+ (nullable instancetype)byt_showAlertViewWithTitle:(nullable NSString *)title
                                            message:(nullable NSString *)message
                                  cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                                  otherButtonTitles:(nullable NSArray *)otherButtons
                                       clickedBlock:(nullable UIAlertViewClickedBlock)clickedBlock;
@end