//
//  UIColor+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/11.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (BYT)


+(UIColor *)colorWithHexString:(NSString *)hexString;
+(NSString *)hexValuesFromUIColor:(UIColor *)color;


@end
