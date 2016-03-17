//
//  NSString+BYT.m
//  GenericFramework
//
//  Created by chengxin on 16/1/13.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import "NSString+BYT.h"
#import <objc/runtime.h>

@implementation NSString (BYT)

static char SCTextStorageKey;
static char SCLayoutManagerKey;
static char SCTextContainerKey;

- (float) heightWithFont:(UIFont *)font maxSize:(CGSize)maxSize andLinebreakMode:(NSLineBreakMode)linebreakMode {
    NSTextStorage *textStorage = objc_getAssociatedObject(self, &SCTextStorageKey);
    NSLayoutManager *layoutManager = objc_getAssociatedObject(self, &SCLayoutManagerKey);
    NSTextContainer *textContainer = objc_getAssociatedObject(self, &SCTextContainerKey);
    
    if (!textStorage) {
        textStorage = [[NSTextStorage alloc] initWithString:self attributes:@{NSFontAttributeName : font}];
        objc_setAssociatedObject(self, &SCTextStorageKey, textStorage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    if (!textContainer) {
        textContainer = [[NSTextContainer alloc] init];
        [textContainer setLineBreakMode:linebreakMode];
        [textContainer setLineFragmentPadding:0.0f];
        objc_setAssociatedObject(self, &SCTextContainerKey, textContainer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    [textContainer setSize:maxSize];
    
    if (!layoutManager) {
        layoutManager = [[NSLayoutManager alloc] init];
        [layoutManager addTextContainer:textContainer];
        objc_setAssociatedObject(self, &SCLayoutManagerKey, layoutManager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    [textStorage addLayoutManager:layoutManager];
    
    CGRect rect = [layoutManager usedRectForTextContainer:textContainer];
    return rect.size.height;
}

- (NSString *)removeLastChar {
    return [self substringToIndex:self.length - 1];
}


+ (BOOL)checkTelNumber:(NSString *)telNumber {
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$"];
    BOOL isMatch = [pred evaluateWithObject:telNumber];
    return isMatch;
}

@end
