//
//  UIImage+BYT.h
//  GenericFramework
//
//  Created by chengxin on 16/1/20.
//  Copyright © 2016年 Grant. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BYTImage(imageName) [UIImage imageNamed:imageName]

@interface UIImage (BYT)

// 图片自定义尺寸
+ (UIImage*)byt_imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;


@end
