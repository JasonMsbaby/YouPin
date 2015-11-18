//
//  LoginController.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//
#import "YPUser.h"
#import "YPUser+User.h"
#import "Tools.h"
#import "LoginController.h"
#import "RegistController.h"
@interface LoginController ()
@property (weak, nonatomic) IBOutlet UIImageView *logoImg;
@property (weak, nonatomic) IBOutlet UITextField *txt_Name;
@property (weak, nonatomic) IBOutlet UITextField *txt_Pwd;

@end

@implementation LoginController

#pragma viewLifeCycle
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    YPUser *user = [YPUser currentUser];
    if (user != nil) {
        self.txt_Name.text = user.username;
    }
}
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
    self.logoImg.layer.cornerRadius = self.logoImg.bounds.size.height/2;
    self.logoImg.clipsToBounds = YES;
}
#pragma mark - action
- (IBAction)btnRegist:(id)sender {
    [self presentViewController:[RegistController new] animated:YES completion:nil];
}
- (IBAction)btnForgetPwd:(id)sender {
}
- (IBAction)btnLogin:(id)sender {
    if (![_txt_Name.text isEqualToString:@""]&&![_txt_Pwd.text isEqualToString:@""]) {
        
       [YPUser logInWithMobilePhoneNumberInBackground:_txt_Name.text password:_txt_Pwd.text block:^(AVUser *user, NSError *error) {
           if (user != nil) {
               [self dismissViewControllerAnimated:YES completion:nil];
           }else{
               [self presentViewController:[Tools alert:@"提示" Message:@"用户名或密码错误" okHandle:nil cancleHandle:nil] animated:YES completion:nil];
           }
       }];
        
        
        
    }else{
        [self presentViewController:[Tools alert:@"提示" Message:@"用户名或者密码不能为空" okHandle:nil cancleHandle:nil] animated:YES completion:nil];
    }
}

#pragma mark - delegate

#pragma mark - other

@end
