//
//  YPJob.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "BasicModel.h"
#import "YPCompony.h"
#import "YPSkill.h"
@interface YPJob : BasicModel
@property(nonatomic,strong) YPCompony   *compony;    // 公司
@property(nonatomic,strong) YPSkill     *skill;      // 需求技能
@property(nonatomic,assign) NSInteger    needNumber; // 招聘人数
@property(nonatomic,strong) NSString    *experience; // 经验
@end
