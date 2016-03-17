//
//  UIButton+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/10.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonBlock)(UIButton *btn);

@interface UIButton (BYT)

#pragma mark - ⊂((・猿・))⊃ UIButton+Block

- (void)addAction:(ButtonBlock)block;

- (void)addAction:(ButtonBlock)block forControlEvents:(UIControlEvents)controlEvents;

@end
