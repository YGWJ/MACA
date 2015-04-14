//
//  ForgetViewController.h
//  MACA
//
//  Created by Yajun Gui on 4/14/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface ForgetViewController : BaseViewController

//手机号框
@property (strong, nonatomic) IBOutlet UITextField *phoneNumTF;

//输入验证码框
@property (strong, nonatomic) IBOutlet UITextField *iCodeTF;

//下一步按钮
@property (strong, nonatomic) IBOutlet UIButton *nextBtn;


@end
