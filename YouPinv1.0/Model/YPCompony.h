//
//  YPCompony.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//
/**
 *  公司基本表
 *
 *  @param nonatomic <#nonatomic description#>
 *  @param strong    <#strong description#>
 *
 *  @return <#return value description#>
 */
#import "BasicModel.h"

@interface YPCompony : BasicModel
@property(nonatomic,strong) NSString *name;//公司名称
@property(nonatomic,strong) NSString *address;//地址
@property(nonatomic,strong) NSString *email;//邮箱
@property(nonatomic,strong) NSString *phone;//电话
@property(nonatomic,strong) NSString *logo_big;//大logo
@property(nonatomic,strong) NSString *logo_small;//小logo

@end
