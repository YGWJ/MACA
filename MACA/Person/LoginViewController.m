//
//  LoginViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/13/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addUI];
}

- (void)addUI
{
    //头像
    _icon.image = [UIImage imageNamed:@"rearing.png"];

    //手机号框
    _phoneNumTF.placeholder = @"手机号";
    [_phoneNumTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *phoneImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"introduce.png"]];
    _phoneNumTF.leftView = phoneImg;
    _phoneNumTF.leftViewMode = UITextFieldViewModeAlways;
    
    //密码框
    _passwordTF.placeholder = @"密码";
    [_passwordTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *passwordImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"introduce.png"]];
    _passwordTF.leftView = passwordImg;
    _passwordTF.leftViewMode = UITextFieldViewModeAlways;
    
    //登陆按钮
    [_loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginBtn.layer setMasksToBounds:YES];
    [_loginBtn.layer setCornerRadius:10.0];
    _loginBtn.backgroundColor = [UIColor blueColor];

}

- (IBAction)loginBtnClick:(id)sender {
    NSLog(@"登陆");
}

- (IBAction)forgetBtnClick:(id)sender {
    NSLog(@"忘记密码");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
