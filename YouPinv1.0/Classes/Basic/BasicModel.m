//
//  BasicModel.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//
#import <objc/runtime.h>
#import "BasicModel.h"

static NSMutableArray *classNameTemp;
@implementation BasicModel

+(instancetype)object{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        classNameTemp = [NSMutableArray array];
    });
    NSString *className = [NSString stringWithUTF8String:class_getName([self class])];
    if (![classNameTemp containsObject:className]) {
        [[self class]registerSubclass];
        [classNameTemp addObject:className];
    }
    return [super object];
}


+ (void)queryWithCQL:(NSString *)CQL pvalues:(NSArray *)pvalues callBack:(void(^)(NSArray * result))callBack{
    
    NSError *error = nil;
    NSString *sql =[NSString stringWithFormat:@"select * from %@ ",[self className]];
    if (CQL != nil) {
        sql = [NSString stringWithFormat:@"%@ %@",sql,CQL];
    }
    [AVQuery doCloudQueryInBackgroundWithCQL:sql pvalues:pvalues callback:^(AVCloudQueryResult *result, NSError *error) {
        NSMutableArray *arr = [NSMutableArray array];
        for (AVObject *avobject in result.results) {
            [arr addObject:[self objectByAVObject:avobject classType:result.className]];
        }
        callBack(arr);
    }];
    if (error != nil) {
        NSLog(@"%@",error);
    }
    
}






/*-------------------------------- 高层帮助方法 --------------------------------*/

- (void)mySetValueForKey{
    [[self attribbutesAndValue]enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [self setObject:obj forKey:key];
    }];
}

/**
 *  把AVObject转换为对象类型
 *
 *  @param object    传入avobject
 *  @param classType 传入需要转换的类型
 *
 *  @return 返回对象实例
 */
+ (id)objectByAVObject:(AVObject *)object classType:(NSString *)classType{
    Class c = NSClassFromString(classType);
    BasicModel *classInstance = [c object];
    
    [[self attribbutes] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id value = [object objectForKey:obj];
        [classInstance setObject:value forKey:obj];
//        NSLog(@"%@",classInstance);
    }];
    return classInstance;
}

/*-------------------------------- 底层帮助方法 --------------------------------*/
/**
 *  获取类名
 *
 *  @return 
 */
+ (NSString *)className{
    return [NSString stringWithUTF8String:class_getName(self)];
}
- (NSString *)className{
    return [NSString stringWithUTF8String:class_getName([self class])];
}
/**
 *  获取本类属性以及属性值
 *
 *  @return
 */
- (NSDictionary *)attribbutesAndValue{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    unsigned int count;
    objc_property_t *attrs = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; i++) {
        objc_property_t pro = attrs[i];
        NSString *proName =[NSString stringWithUTF8String:property_getName(pro)];
        id proValue = [self objectForKey:proName];
        [dic setValue:proValue forKey:proName];
    }
    free(attrs);
    return dic;
}
/**
 *  获取本类属性列表
 *
 *  @return
 */
+ (NSArray *)attribbutes{
    NSMutableArray *arr = [NSMutableArray array];
    unsigned int count;
    objc_property_t *attrs = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; i++) {
        objc_property_t pro = attrs[i];
        NSString *proName =[NSString stringWithUTF8String:property_getName(pro)];
        [arr addObject:proName];
    }
    free(attrs);
    return arr;
}


@end
