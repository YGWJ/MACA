//
//  RegisterViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/13/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

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
    
    //注册按钮
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_registerBtn.layer setMasksToBounds:YES];
    [_registerBtn.layer setCornerRadius:10.0];
    _registerBtn.backgroundColor = [UIColor blueColor];
}


- (IBAction)regiterBtnClick:(id)sender {
    NSLog(@"注册");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
