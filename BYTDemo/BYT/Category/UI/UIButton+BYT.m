//
//  UIButton+BYT.m
//  GenericFramework
//
//  Created by chengxin on 16/1/10.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import "UIButton+BYT.h"
#import <objc/runtime.h>

static char ActionTag;

@implementation UIButton (BYT)

#pragma mark - ⊂((・猿・))⊃ UIButton+Block

- (void)addAction:(ButtonBlock)block {
    objc_setAssociatedObject(self, &ActionTag, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addAction:(ButtonBlock)block forControlEvents:(UIControlEvents)controlEvents {
    objc_setAssociatedObject(self, &ActionTag, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(action:) forControlEvents:controlEvents];
}

- (void)action:(id)sender {
    ButtonBlock blockAction = (ButtonBlock) objc_getAssociatedObject(self, &ActionTag);
    if (blockAction) {
        blockAction(self);
    }
}

@end
