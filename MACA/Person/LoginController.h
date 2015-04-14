//
//  LoginController.h
//  MACA
//
//  Created by Yajun Gui on 4/9/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface LoginController : BaseViewController

//头图
@property (nonatomic,retain) UIImageView *image;
//手机号框
@property (nonatomic,retain) UITextField *phoneNumTF;
//密码框
@property (nonatomic,retain) UITextField *passwordTF;
//登陆按钮
@property (nonatomic,strong) UIButton *LoginBtn;
//忘记按钮
@property (nonatomic,strong) UIButton *forgetBtn;


@end
