//
//  RegisterViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/13/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "RegisterViewController.h"
#import "ServiceManage.h"

@interface RegisterViewController () <UITextFieldDelegate>

{
    NSDictionary *dict1;//试用
    
}
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"用户注册";
    
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
    
    //注册按钮
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_registerBtn.layer setMasksToBounds:YES];
    [_registerBtn.layer setCornerRadius:10.0];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return  YES;
}

- (IBAction)regiterBtnClick:(id)sender {
//    [[ServiceManage shareInstance] DidRegister:dict1 completion:<#^(ERROR_CODE code, id obj)callBack#>{
//    
//    }]
}
 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
