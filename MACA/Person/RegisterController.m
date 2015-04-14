//
//  RegisterController.m
//  MACA
//
//  Created by Yajun Gui on 4/9/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "RegisterController.h"
//手机框
#define phoneNumTFWidth ScreenWidth * 0.8
#define phoneNumTFHeight 30

//密码框
#define passwordTFWidth ScreenWidth * 0.8
#define passwordTFHeight 30

//注册按钮
#define registerBtnWidth ScreenWidth * 0.8
#define registerBtnHeight 40

@interface RegisterController ()

@end

@implementation RegisterController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加头图片
    [self addImage];
    //手机号框
    [self addPhoneNumTF];
    //密码框
    [self addPasswordTF];
    //注册按钮
    [self addRegisterBtn];
    
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

- (void)addRegisterBtn
{
    _registerBtn = [[UIButton alloc] initWithFrame:CGRectMake((ScreenWidth - registerBtnWidth) / 2, _passwordTF.frame.origin.y + passwordTFHeight + 20, registerBtnWidth, registerBtnHeight)];
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_registerBtn.layer setMasksToBounds:YES];
    [_registerBtn.layer setCornerRadius:10.0];
    _registerBtn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_registerBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
