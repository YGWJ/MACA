//
//  LoginViewController.h
//  MACA
//
//  Created by Yajun Gui on 4/13/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface LoginViewController : BaseViewController

//头像
@property (strong, nonatomic) IBOutlet UIImageView *icon;

//手机号框
@property (strong, nonatomic) IBOutlet UITextField *phoneNumTF;

//密码框
@property (strong, nonatomic) IBOutlet UITextField *passwordTF;

//登陆按钮
@property (strong, nonatomic) IBOutlet UIButton *loginBtn;

//忘记密码按钮
@property (strong, nonatomic) IBOutlet UIButton *forgetBtn;

@end
