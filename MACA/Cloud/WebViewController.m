//
//  WebViewController.m
//  MACA
//
//  Created by ywj on 15-3-15.
//  Copyright (c) 2015年 yangwenjun. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.titleStr;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"leftBack.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}

//返回方法
- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
