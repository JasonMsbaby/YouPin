//
//  YPUser+User.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "YPUser+User.h"

@implementation YPUser (User)

+ (void)regist:(NSString *)uName Pwd:(NSString *)pwd valideCode:(NSString *)valide callBack:(void (^)(BOOL))callback{
    YPUser *user = [self object];
    user.username = uName;
    user.password = pwd;
    user.mobilePhoneNumber = uName;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        
    }];
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        callback(succeeded);
    }];
}
@end
