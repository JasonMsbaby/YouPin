//
//  TabBarController.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/17.
//  Copyright © 2015年 张杰. All rights reserved.
//
#import "YPOrgization.h"
#import "TabBarController.h"
#import "YPCity.h"
#import "YPSchool+YPSchoolCategory.h"
#import "CompanyController.h"
#import "InternController.h"
#import "TrainController.h"
#import "CompanyPersonController.h"
#import "TrainPersonController.h"
#import "InternPersonController.h"
#import "YPUser.h"
@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    CompanyController *companyVC = [CompanyController new];
    companyVC.title = @"公司";
    companyVC.tabBarItem.image = [UIImage imageNamed:@"company"];
    
    InternController *internVC = [InternController new];
    internVC.title = @"实习生";
    internVC.tabBarItem.image = [UIImage imageNamed:@"daxue"];

    TrainController *trainVC = [TrainController new];
    trainVC.title = @"培训生";
    trainVC.tabBarItem.image = [UIImage imageNamed:@"EDTA"];
    
    
    UIViewController *person = nil;
    switch (2) {
        case 0://培训机构
            person = [TrainPersonController new];
            break;
        case 1://教师
            person = [InternPersonController new];
            break;
        case 2://公司
            person = [CompanyPersonController new];
            break;
            
        default:
            break;
    }
    person.title = @"个人中心";
    person.tabBarItem.image = [UIImage imageNamed:@"center"];
    
    
    
    NSArray *vcs = @[companyVC,internVC,trainVC,person];
    NSMutableArray *ncs = [NSMutableArray array];
    for (UIViewController *vc in vcs) {
        UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
        [ncs addObject:nc];
    }
    self.viewControllers = ncs;
}


@end
