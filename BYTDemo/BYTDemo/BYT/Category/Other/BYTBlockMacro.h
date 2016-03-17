//
//  BYTBlockMacro.h
//  GenericFramework
//
//  Created by chengxin on 16/1/22.
//  Copyright (c) 2016 Grant. All rights reserved.
//

#ifndef BYTBlockMacro_h
#define BYTBlockMacro_h


/**
* 强弱引用转换，用于解决代码块（block）与强引用self之间的循环引用问题
* 调用方式: `@BYTWeakSelf`实现弱引用转换，`@BYTStrongSelf`实现强引用转换
*
* 示例：
* @BYTWeakSelf
* [obj block:^{
* @BYTStrongSelf
* self.property = something;
* }];
*/
#ifndef    BYTWeakSelf
#if __has_feature(objc_arc)
#define BYTWeakSelf autoreleasepool{} __weak __typeof__(self) weakSelf = self;
#else
#define BYTWeakSelf autoreleasepool{} __block __typeof__(self) blockSelf = self;
#endif
#endif

#ifndef    BYTStrongSelf
#if __has_feature(objc_arc)
#define BYTStrongSelf try{} @finally{} __typeof__(weakSelf) self = weakSelf;
#else
#define BYTStrongSelf try{} @finally{} __typeof__(blockSelf) self = blockSelf;
#endif
#endif

/**
* 强弱引用转换，用于解决代码块（block）与强引用对象之间的循环引用问题
* 调用方式: `@BYTWeakify(object)`实现弱引用转换，`@BYTStrongify(object)`实现强引用转换
*
* 示例：
* @BYTWeakify(object)
* [obj block:^{
* @BYTStrongify(object)
* strong_object = something;
* }];
*/
#ifndef    BYTWeakify
#if __has_feature(objc_arc)
#define BYTWeakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define BYTWeakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#endif

#ifndef    BYTStrongify
#if __has_feature(objc_arc)
#define BYTStrongify(object) try{} @finally{} __typeof__(object) strong##_##object = weak##_##object;
#else
#define BYTStrongify(object) try{} @finally{} __typeof__(object) strong##_##object = block##_##object;
#endif
#endif



#endif /* BYTBlockMacro_h */
