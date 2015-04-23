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
@interface LoginViewController () <UITextFieldDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加UI
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
    
    //标题
    self.title = @"用户登录";
    
    //返回箭头
    UIButton *itemBtn4 = [[UIButton alloc] initWithFrame:CGRectMake(17, 5, 10.5, 18)];
    [itemBtn4 setBackgroundImage:[UIImage imageNamed:@"leftBack.png"] forState:UIControlStateNormal];
    [itemBtn4 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithCustomView:itemBtn4];
    self.navigationItem.leftBarButtonItem= back;

}


//代理方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


//登陆按钮
- (IBAction)loginBtnClick:(id)sender {
    
    NSLog(@"登陆");
    //1.如果登陆成功，隐藏“个人中心”的“登陆”和“注册“按钮，并添加一个注销登陆按钮，头像换成自己头像
    //2.给“注销”按钮添加点击
    //3.如果点击“注销”按钮，清除用户名和密码的缓存，出现“登陆”和“注册“按钮
}


//忘记密码按钮
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
