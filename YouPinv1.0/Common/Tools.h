//
//  Tools.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Tools : NSObject

+ (UIAlertController *)alert:(NSString *)title Message:(NSString *)msg okHandle:(void(^)())ok cancleHandle:(void(^)())cancle;

+ (BOOL)validateMobile:(NSString *)mobileNum;
@end
