//
//  LoginViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/13/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "LoginViewController.h"
#import "ForgetViewController.h"


//第一次同步信息试试
//第二次同步
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.title = @"用户登录";
    UIButton *itemBtn4 = [[UIButton alloc] initWithFrame:CGRectMake(17, 5, 10.5, 18)];
    [itemBtn4 setBackgroundImage:[UIImage imageNamed:@"leftBack.png"] forState:UIControlStateNormal];
    [itemBtn4 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithCustomView:itemBtn4];
    self.navigationItem.leftBarButtonItem= back;
    
    [self addUI];
}

- (void) back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)addUI
{

    //手机号框
    _phoneNumTF.placeholder = @"手机号";
    [_phoneNumTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *phoneImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_phone.png"]];
    _phoneNumTF.leftView = phoneImg;
    _phoneNumTF.leftViewMode = UITextFieldViewModeAlways;
    
    //密码框
    _passwordTF.placeholder = @"密码";
    [_passwordTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *passwordImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_lock.png"]];
    _passwordTF.leftView = passwordImg;
    _passwordTF.leftViewMode = UITextFieldViewModeAlways;
    
    //登陆按钮
    [_loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginBtn.layer setMasksToBounds:YES];
    [_loginBtn.layer setCornerRadius:10.0];

}

- (IBAction)loginBtnClick:(id)sender {
    NSLog(@"登陆");
}

- (IBAction)forgetBtnClick:(id)sender {
    ForgetViewController *forgetVC = [[ForgetViewController alloc] init];
    [self.navigationController pushViewController:forgetVC animated:YES];
    NSLog(@"忘记密码");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
