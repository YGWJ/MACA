//
//  ForgetViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/14/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "ForgetViewController.h"
#import "ForgetViewController2.h"

@interface ForgetViewController () <UITextFieldDelegate>
@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加UI
    [self addUI];
   
   
}

- (void)addUI
{
    self.title = @"忘记密码";
    //
    _phoneNumTF.placeholder = @"手机号";
    [_phoneNumTF setBorderStyle:UITextBorderStyleRoundedRect];
    UIImageView *phoneImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_phone.png"]];
    _phoneNumTF.leftView = phoneImg;
    _phoneNumTF.leftViewMode = UITextFieldViewModeAlways;
    //
    _iCodeTF.placeholder = @"输入验证码";
    [_iCodeTF setBorderStyle:UITextBorderStyleRoundedRect];
    //
    [_nextBtn.layer setMasksToBounds:YES];
    [_nextBtn.layer setCornerRadius:10.0];
    //
    UIButton *itemBtn4 = [[UIButton alloc] initWithFrame:CGRectMake(17, 5, 10.5, 18)];
    [itemBtn4 setBackgroundImage:[UIImage imageNamed:@"leftBack.png"] forState:UIControlStateNormal];
    [itemBtn4 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithCustomView:itemBtn4];
    self.navigationItem.leftBarButtonItem= back;
}

- (void) back
{
    [self.navigationController popViewControllerAnimated:YES];
}

//点击获取验证码按钮
- (IBAction)getICodeBtnClick:(id)sender {
    NSLog(@"获取验证码");
}



//点击下一步按钮
- (IBAction)nextBtnClick:(id)sender {
    
    //先要判断是否正确，还没写
    
    ForgetViewController2 *forgetVC2 = [[ForgetViewController2 alloc] init];
    [self.navigationController pushViewController:forgetVC2 animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
