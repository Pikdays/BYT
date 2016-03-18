//
// Created by Pikdays on 16/1/21.
// Copyright (c) 2016 Pikdays. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^UIAlertViewClickedBlock)(NSInteger buttonIndex);

@interface UIAlertView (BYT)

+ (nullable instancetype)byt_showAlertViewWithTitle:(NSString *)title
                                            message:(NSString *)message
                                  cancelButtonTitle:(NSString *)cancelButtonTitle
                                  otherButtonTitles:(NSArray *)otherButtons
                                       clickedBlock:(UIAlertViewClickedBlock)clickedBlock;
@end