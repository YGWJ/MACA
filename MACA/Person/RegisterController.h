//
//  RegisterController.h
//  MACA
//
//  Created by Yajun Gui on 4/9/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface RegisterController : BaseViewController

//头图
@property (nonatomic,retain) UIImageView *image;
//手机号框
@property (nonatomic,retain) UITextField *phoneNumTF;
//密码框
@property (nonatomic,retain) UITextField *passwordTF;
//注册按钮
@property (nonatomic,strong) UIButton *registerBtn;

@end
