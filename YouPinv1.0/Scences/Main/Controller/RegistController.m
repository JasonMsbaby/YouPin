//
//  RegistController.m
//  YouPinv1.0
//
//  Created by Jason_Msbaby on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//
#import "Tools.h"
#import "RegistController.h"
#import "YPUser.h"
#import "YPUser+User.h"
@interface RegistController ()
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *pwd1;
@property (weak, nonatomic) IBOutlet UITextField *pwd2;
@property (weak, nonatomic) IBOutlet UITextField *valideCode;

@end

@implementation RegistController

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
    
}
#pragma mark - action
- (IBAction)btnBackLogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)btnRegist:(id)sender {
    if ([_pwd1.text isEqualToString:_pwd2.text]) {
        
        if ([Tools validateMobile:_phone.text]) {
            [YPUser signUpOrLoginWithMobilePhoneNumberInBackground:_pwd1.text smsCode:@"" block:^(AVUser *user, NSError *error) {
                
            }];
        }else{
            [self presentViewController:[Tools alert:@"提示" Message:@"手机号码格式有误,请校验" okHandle:^(){
                [self dismissViewControllerAnimated:YES completion:nil];
            } cancleHandle:nil] animated:YES completion:nil];
        }
        
       
        
        
        
        [YPUser regist:_phone.text Pwd:_pwd1.text callBack:^(BOOL success) {
            if (!success) {
                [self presentViewController:[Tools alert:@"提示" Message:@"注册失败,该手机已经注册" okHandle:nil cancleHandle:nil] animated:YES completion:nil];
            }else{
                [self presentViewController:[Tools alert:@"提示" Message:@"注册成功，请返回登陆" okHandle:^(){
                    [self dismissViewControllerAnimated:YES completion:nil];
                } cancleHandle:nil] animated:YES completion:nil];
            }
        }];
        
    }else{
        UIAlertController *alert = [Tools alert:@"提示" Message:@"两次输入的密码不一致" okHandle:nil cancleHandle:nil];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

#pragma mark - delegate

#pragma mark - other

@end
