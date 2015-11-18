//
//  YPUser.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "YPUser.h"

@implementation YPUser


+ (instancetype)object{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [[self class]registerSubclass];
    });
    return [super object];
}

@end
