//
//  AddBabyViewController.m
//  MACA
//
//  Created by ywj on 15-3-15.
//  Copyright (c) 2015年 yangwenjun. All rights reserved.
//

#import "AddBabyViewController.h"

@interface AddBabyViewController ()

@end

@implementation AddBabyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的宝宝";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"leftBack.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
    [self addUI];
}


//返回方法
- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)addUI
{
    
}

@end
