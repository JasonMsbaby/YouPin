//
//  YPSkill.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//
/**
 *  技能表
 *
 *  @param nonatomic <#nonatomic description#>
 *  @param strong    <#strong description#>
 *
 *  @return <#return value description#>
 */
#import "BasicModel.h"
@interface YPSkill : BasicModel
@property(nonatomic,strong) NSString *name;//技能名称
@property(nonatomic,strong) NSString *type;//技能类型
@end
