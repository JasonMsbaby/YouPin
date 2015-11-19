//
//  YPUser+User.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "YPUser.h"

@interface YPUser (User)


/**
 *  注册
 *
 *  @param uName    <#uName description#>
 *  @param pwd      <#pwd description#>
 *  @param callback <#callback description#>
 */
+ (void)regist:(NSString *)uName Pwd:(NSString*)pwd callBack:(void(^)(BOOL success))callback;

@end
