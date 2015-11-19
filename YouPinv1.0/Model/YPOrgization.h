//
//  YPOrgization.h
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//


/**
 *  培训机构表
 */
#import "YPSkill.h"
#import "BasicModel.h"
#import "YPCity.h"

@interface YPOrgization : BasicModel
@property(nonatomic,strong) NSString *name;//机构名称
@property(nonatomic,strong) NSString *address;//地址
@property(nonatomic,strong) NSString *email;//邮箱
@property(nonatomic,strong) NSString *telePhone;//移动电话
@property(nonatomic,strong) NSString *phone;//座机
@property(nonatomic,strong) NSString *owner;//负责人
@property(nonatomic,strong) NSString *ownerPhone;//负责人联系电话
@property(nonatomic,strong) NSString *license;//营业执照
@property(nonatomic,strong) NSArray <YPSkill *> *skills;//培训方向
@property(nonatomic,strong) YPCity *city;//城市外键
@property(nonatomic,strong) NSString *logo_big;//大logo
@property(nonatomic,strong) NSString *logo_small;//小logo
@property(nonatomic,assign) BOOL *isDisplay;//是否显示
@end
