//
//  ForgetViewController2.h
//  MACA
//
//  Created by Yajun Gui on 4/14/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface ForgetViewController2 : BaseViewController

//输入新密码框
@property (strong, nonatomic) IBOutlet UITextField *pwdTF;

//确认新密码框
@property (strong, nonatomic) IBOutlet UITextField *confirmPwdTF;

//确认按钮
@property (strong, nonatomic) IBOutlet UIButton *confirmBtn;

@end
