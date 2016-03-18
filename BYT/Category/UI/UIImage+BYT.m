//
//  UIImage+BYT.m
//  GenericFramework
//
//  Created by chengxin on 16/1/20.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import "UIImage+BYT.h"

@implementation UIImage (BYT)

+ (UIImage*)byt_imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return newImage;
}

@end
