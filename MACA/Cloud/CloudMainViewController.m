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
#import "LookDoctorViewController.h"

//看医生网址
#define LookDoctorWebString @"http://www.baidu.com"
//公共咨询网址
#define PublicConsultationWebString @"http://www.sina.com.cn"
//育儿网址
#define ChildRearingWebString @"http://www.china.com"
//教育培训网址
#define EducationTrainingWebString @"http://www.sohu.com"
//特色专科网址
#define SpecialCharactorWebString @"http://www.163.com"
//医院介绍网址
#define HospitalIntroduceWebString @"http://www.qq.com"


@interface CloudMainViewController ()<UITextFieldDelegate>

@end



@implementation CloudMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"妇幼健儿";
    
}


- (IBAction)search:(UIButton *)sender {
    NSLog(@"搜索");
}


//搜索的代理方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

//看医生按钮
- (IBAction)lookDoctor:(id)sender {
    
    LookDoctorViewController *look = [[LookDoctorViewController alloc] init];
    [self.navigationController pushViewController:look animated:YES];
    
}

//公共咨询
- (IBAction)publicConsultation:(id)sender {

    WebViewController *webView = [[WebViewController alloc] init];
    webView.titleStr = @"公共咨询";
    webView.urlString = PublicConsultationWebString;
    [self.navigationController pushViewController:webView animated:YES];

}

//育儿宝典
- (IBAction)childRearing:(id)sender {

    WebViewController *webView = [[WebViewController alloc] init];
    webView.titleStr = @"育儿宝典";
    webView.urlString = ChildRearingWebString;
    [self.navigationController pushViewController:webView animated:YES];
}

//教育培训
- (IBAction)educationTraining:(id)sender {

    WebViewController *webView = [[WebViewController alloc] init];
    webView.titleStr = @"教育培训";
    webView.urlString = EducationTrainingWebString;
    [self.navigationController pushViewController:webView animated:YES];
}

//特色专科
- (IBAction)specialCharactor:(id)sender {

    WebViewController *webView = [[WebViewController alloc] init];
    webView.titleStr = @"特色专科";
    webView.urlString = SpecialCharactorWebString;
    [self.navigationController pushViewController:webView animated:YES];
}

//医院介绍
- (IBAction)hospitalIntroduce:(id)sender {

    WebViewController *webView = [[WebViewController alloc] init];
    webView.titleStr = @"医院介绍";
    webView.urlString = HospitalIntroduceWebString;
    [self.navigationController pushViewController:webView animated:YES];
}


@end
