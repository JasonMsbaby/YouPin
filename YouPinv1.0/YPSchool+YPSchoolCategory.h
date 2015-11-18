//
//  YPSchool+YPSchoolCategory.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "YPSchool.h"

@interface YPSchool (YPSchoolCategory)
+(void)queryAll:(void(^)(NSArray *result))callback;
@end
