//
//  ForgetViewController2.m
//  MACA
//
//  Created by Yajun Gui on 4/14/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "ForgetViewController2.h"

@interface ForgetViewController2 ()

@end

@implementation ForgetViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加UI
    [self addUI];
    
}


- (void)addUI
{
    _pwdTF.placeholder = @"请输入新密码";
    [_pwdTF setBorderStyle:UITextBorderStyleRoundedRect];
    
    _confirmPwdTF.placeholder = @"请确认新密码";
    [_confirmPwdTF setBorderStyle:UITextBorderStyleRoundedRect];
    
    [_confirmBtn.layer setMasksToBounds:YES];
    [_confirmBtn.layer setCornerRadius:10.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//点击确认按钮
- (IBAction)confirmBtnClick:(id)sender {
    NSLog(@"确认");
    //将新的密码传进数据库
}

@end
