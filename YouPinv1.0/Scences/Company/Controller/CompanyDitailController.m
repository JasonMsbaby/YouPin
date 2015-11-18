//
//  CompanyDitailController.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "CompanyDitailController.h"

@interface CompanyDitailController ()

@end

@implementation CompanyDitailController

#pragma viewLifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self initSubViews];
}
#pragma mark - init
/**
 *  初始化数据
 */
- (void)initData{
    
}
/**
 *  初始化子视图
 */
- (void)initSubViews{
    self.navigationItem.title = @"公司详情";
     
}
#pragma mark - action

#pragma mark - delegate

#pragma mark - other

@end
