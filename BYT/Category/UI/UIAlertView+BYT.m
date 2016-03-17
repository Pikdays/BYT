//
// Created by Pikdays on 16/1/21.
// Copyright (c) 2016 Pikdays. All rights reserved.
//

#import "UIAlertView+BYT.h"
#import <objc/runtime.h>

static void *kUIAlertViewClickedBlock = @"UIAlertViewClickedBlockKey";

@interface UIAlertView () <UIAlertViewDelegate>
@end

@implementation UIAlertView (BYT)

+ (nullable instancetype)showAlertViewWithTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtons
                           clickedBlock:(nullable UIAlertViewClickedBlock)clickedBlock {

    UIAlertView *av = [[UIAlertView alloc] initWithTitle:title message:message delegate:[self self] cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];
    for (NSString *buttonTitle in otherButtons) {
        [av addButtonWithTitle:buttonTitle];
    }
    objc_setAssociatedObject(self, &kUIAlertViewClickedBlock, clickedBlock, OBJC_ASSOCIATION_COPY);
    [av show];

    return av;
}

#pragma mark - ⊂((・猿・))⊃ Delegate
#pragma mark - UIAlertViewDelegate

+ (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    UIAlertViewClickedBlock clickedBlock = objc_getAssociatedObject(self, &kUIAlertViewClickedBlock);
    if (clickedBlock) {
        clickedBlock(buttonIndex); // cancel button is button 0
    }
}

@end