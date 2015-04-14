//
//  CloudMainViewController.m
//  MACA
//
//  Created by ywj on 15-3-13.
//  Copyright (c) 2015年 yangwenjun. All rights reserved.
//

#import "CloudMainViewController.h"
#import "Tools.h"
#import "WebViewController.h"

@interface CloudMainViewController ()<UITextFieldDelegate>

@end

//tag = 1 页面展示图   2 搜索框  3搜索按钮
//      4 scorllview 5 看医生  6 公共资讯
//      7 育儿宝典    8 教育培训 9 特色专科  10 医院介绍

@implementation CloudMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"妇幼健儿";
    [self addUI];
}


- (void)addUI
{
    [Tools setUIViewLine:[self.view viewWithTag:2] cornerRadius:0 with:1 color:[Tools colorWithRed:0 angGreen:137 andBlue:225]];
    ((UITextField *)[self.view viewWithTag:2]).delegate = self;
    [((UITextField *)[self.view viewWithTag:2]) setReturnKeyType:UIReturnKeyDone];
    [[self.view viewWithTag:5] setBackgroundColor:[Tools colorWithRed:78 angGreen:159 andBlue:244]];
}

- (IBAction)search:(UIButton *)sender {
    NSLog(@"搜索");
}

- (IBAction)lookDoctor:(UIButton *)sender {
    WebViewController *web = [[WebViewController alloc] init];
    switch (sender.tag) {
        case 5:
        {
            NSLog(@"看医生");
            web.titleStr = @"看医生";
        }
            break;
        case 6:
        {
            NSLog(@"公共资讯");
            web.titleStr = @"公共资讯";
        }
            break;
        case 7:
        {
            NSLog(@"育儿宝典");
            web.titleStr = @"育儿宝典";
        }
            break;
        case 8:
        {
            NSLog(@"教育培训");
            web.titleStr = @"教育培训";
        }
            break;
        case 9:
        {
            NSLog(@"特色专科");
            web.titleStr = @"特色专科";
        }
            break;
        case 10:
        {
            NSLog(@"医院介绍");
            web.titleStr = @"医院介绍";
        }
            break;
            
        default:
            break;
    }
    [self.navigationController pushViewController:web animated:YES];
}

//搜索的代理方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
