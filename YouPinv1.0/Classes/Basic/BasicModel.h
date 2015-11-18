//
//  BasicModel.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//
#import <AVOSCloud.h>
#import <AVObject+Subclass.h>
#import <Foundation/Foundation.h>

@interface BasicModel : AVObject <AVSubclassing>

/**
 *  重写实例获取方法 添加自动注册
 *
 *  @return
 */
+(instancetype)object;
/**
 *  使用CQL进行查询
 *
 *  @param CQL      CQL语句 查询所有为nil 如果需要加条件 where name = ?
 *  @param pvalues  参数列表
 *  @param callBack 回调函数  返回数组类型  数组里面是对象的实例
 */
+ (void)queryWithCQL:(NSString *)CQL pvalues:(NSArray *)pvalues callBack:(void(^)(NSArray * result))callBack;


/**
 *  本类类名
 *
 *  @return
 */
+ (NSString *)className;
- (NSString *)className;


@end
