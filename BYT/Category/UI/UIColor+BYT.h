//
//  UIColor+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/11.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BYTColorHex(hexString) [UIColor byt_colorWithHexString:hexString]
#define BYTColorRGBAFloat(r, g, b, a) [UIColor colorWithRed:r green:g blue:b alpha:a]
#define BYTColorRGBFloat(r, g, b) BYTColorRGBAFloat(r, g, b, 1.0)

#define BYTColorRGBAInt(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define BYTColorRGBInt(r, g, b) BYTColorRGBAInt(r, g, b, 1.0)

@interface UIColor (BYT)

#pragma mark - ⊂((・猿・))⊃ Hex

+ (UIColor *)byt_colorWithHex:(int)hexValue;

+ (UIColor *)byt_colorWithHex:(int)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)byt_colorWithHexString:(NSString *)hexString;

+ (NSString *)byt_hexValuesFromUIColor:(UIColor *)color;


@end
