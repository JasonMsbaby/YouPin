//
//  YPEmployment.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//
/**
 *  就业者信息表
 *
 *  @param nonatomic  <#nonatomic description#>
 *  @param <#strong#> <#<#strong#> description#>
 *
 *  @return <#return value description#>
 */
#import "YPRole.h"
#import "YPSkill.h"
#import "YPUser.h"
#import "BasicModel.h"

@interface YPEmployment : BasicModel

@property(nonatomic,strong) NSString  *name;        // 求职者姓名
@property(nonatomic,strong) NSString  *phone;       // 电话
@property(nonatomic,assign) NSInteger *age;         // 年龄
@property(nonatomic,strong) YPSkill   *skill;       // 技能
@property(nonatomic,strong) YPRole    *role;        // 角色
@property(nonatomic,strong) NSString  *experience;  //工作经验
@property(nonatomic,strong) NSString  *headImg;     //证件照
@property(nonatomic,strong) YPUser    *refPerson;   //推荐人
@property(nonatomic,strong) NSString  *email;       //邮箱
@property(nonatomic,strong) NSString  *instroduce;  //自我介绍
@property(nonatomic,assign) BOOL      *isDisplay;   //是否在界面展示
@property(nonatomic,strong) NSString  *exceptMoney; // 期望薪资

@end
