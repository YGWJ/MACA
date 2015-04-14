//
//  LoginController.m
//  MACA
//
//  Created by Yajun Gui on 4/9/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "LoginController.h"
//手机框
#define phoneNumTFWidth ScreenWidth * 0.8
#define phoneNumTFHeight 30

//密码框
#define passwordTFWidth ScreenWidth * 0.8
#define passwordTFHeight 30

//登陆按钮
#define LoginBtnWidth ScreenWidth * 0.8
#define LoginBtnHeight 40

//忘记按钮
#define forgetBtnWidth ScreenWidth * 0.4
#define forgetBtnHeight 20

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加头图片
    [self addImage];
    //手机号框
    [self addPhoneNumTF];
    //密码框
    [self addPasswordTF];
    //登陆按钮
    [self addLoginBtn];
    //忘记密码按钮
    [self addForgetBtn];
    

}

- (void)addImage
{
    _image = [[UIImageView alloc] initWithFrame:CGRectMake((ScreenWidth - 70)/2, 90, 70, 70)];
    _image.image = [UIImage imageNamed:@"rearing.png"];
    [self.view addSubview:_image];
}

- (void)addPhoneNumTF
{
    _phoneNumTF = [[UITextField alloc] initWithFrame:CGRectMake((ScreenWidth - phoneNumTFWidth) / 2, _image.frame.origin.y + _image.frame.size.height + 30, phoneNumTFWidth, phoneNumTFHeight)];
    _phoneNumTF.placeholder = @"手机号";
    [_phoneNumTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *phoneImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"introduce.png"]];
    _phoneNumTF.leftView = phoneImg;
    _phoneNumTF.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:_phoneNumTF];
    
}

- (void)addPasswordTF
{
    _passwordTF = [[UITextField alloc] initWithFrame:CGRectMake((ScreenWidth - passwordTFWidth) / 2, _phoneNumTF.frame.origin.y + _phoneNumTF.frame.size.height + 20, phoneNumTFWidth, phoneNumTFHeight)];
    _passwordTF.placeholder = @"密码";
    [_passwordTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *passwordImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"introduce.png"]];
    _passwordTF.leftView = passwordImg;
    _passwordTF.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:_passwordTF];
    
}

- (void)addLoginBtn
{
    _LoginBtn = [[UIButton alloc] initWithFrame:CGRectMake((ScreenWidth - LoginBtnWidth) / 2, _passwordTF.frame.origin.y + passwordTFHeight + 20, LoginBtnWidth, LoginBtnHeight)];
    [_LoginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [_LoginBtn.layer setMasksToBounds:YES];
    [_LoginBtn.layer setCornerRadius:10.0];
    _LoginBtn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_LoginBtn];
}

- (void)addForgetBtn
{
    _forgetBtn = [[UIButton alloc] initWithFrame:CGRectMake((ScreenWidth - forgetBtnWidth) / 2, _LoginBtn.frame.origin.y + passwordTFHeight + 20, forgetBtnWidth, forgetBtnHeight)];
    [_forgetBtn setTitle:@"忘记密码>>" forState:UIControlStateNormal];
    _forgetBtn.titleLabel.font = [UIFont systemFontOfSize: 14.0];
    [_forgetBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:_forgetBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
