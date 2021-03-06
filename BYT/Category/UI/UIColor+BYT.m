//
//  UIColor+BYT.m
//  GenericFramework
//
//  Created by chengxin on 16/1/11.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import "UIColor+BYT.h"

@implementation UIColor (BYT)

#pragma mark - ⊂((・猿・))⊃ Hex

+ (UIColor *)byt_colorWithHex:(int)hexValue {
    return [UIColor byt_colorWithHex:hexValue alpha:1.0];
}

+ (UIColor *)byt_colorWithHex:(int)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float) ((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float) ((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float) (hexValue & 0xFF)) / 255.0
                           alpha:alpha];
}

+ (UIColor *)byt_colorWithHexString:(NSString *)hexString {
    if ([hexString length] != 6) {
        return nil;
    }

    // Brutal and not-very elegant test for non hex-numeric characters
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^a-fA-F|0-9]" options:0 error:NULL];
    NSUInteger match = [regex numberOfMatchesInString:hexString options:NSMatchingReportCompletion range:NSMakeRange(0, [hexString length])];

    if (match != 0) {
        return nil;
    }

    NSRange rRange = NSMakeRange(0, 2);
    NSString *rComponent = [hexString substringWithRange:rRange];
    NSUInteger rVal = 0;
    NSScanner *rScanner = [NSScanner scannerWithString:rComponent];
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wincompatible-pointer-types"
    [rScanner scanHexInt:&rVal];
#pragma clang diagnostic pop
    float rRetVal = (float) rVal / 254;


    NSRange gRange = NSMakeRange(2, 2);
    NSString *gComponent = [hexString substringWithRange:gRange];
    NSUInteger gVal = 0;
    NSScanner *gScanner = [NSScanner scannerWithString:gComponent];
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wincompatible-pointer-types"
    [gScanner scanHexInt:&gVal];
#pragma clang diagnostic pop
    float gRetVal = (float) gVal / 254;

    NSRange bRange = NSMakeRange(4, 2);
    NSString *bComponent = [hexString substringWithRange:bRange];
    NSUInteger bVal = 0;
    NSScanner *bScanner = [NSScanner scannerWithString:bComponent];
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wincompatible-pointer-types"
    [bScanner scanHexInt:&bVal];
#pragma clang diagnostic pop
    float bRetVal = (float) bVal / 254;

    return [UIColor colorWithRed:rRetVal green:gRetVal blue:bRetVal alpha:1.0f];

}

+ (NSString *)byt_hexValuesFromUIColor:(UIColor *)color {

    if (!color) {
        return nil;
    }

    if (color == [UIColor whiteColor]) {
        // Special case, as white doesn't fall into the RGB color space
        return @"ffffff";
    }

    CGFloat red;
    CGFloat blue;
    CGFloat green;
    CGFloat alpha;

    [color getRed:&red green:&green blue:&blue alpha:&alpha];

    int redDec = (int) (red * 255);
    int greenDec = (int) (green * 255);
    int blueDec = (int) (blue * 255);

    NSString *returnString = [NSString stringWithFormat:@"%02x%02x%02x", (unsigned int) redDec, (unsigned int) greenDec, (unsigned int) blueDec];

    return returnString;

}


@end
