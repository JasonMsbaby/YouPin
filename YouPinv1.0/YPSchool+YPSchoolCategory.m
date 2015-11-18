//
//  YPSchool+YPSchoolCategory.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "YPSchool+YPSchoolCategory.h"

@implementation YPSchool (YPSchoolCategory)



+(void)queryAll:(void(^)(NSArray *result))callback{
    
    [self queryWithCQL:@"where name = ? and logo = ?" pvalues:@[@"333",@"123"] callBack:^(NSArray *result) {
        callback(result);
    }];
}

@end
