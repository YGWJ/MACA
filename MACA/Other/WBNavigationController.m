//
//  WBNavigationController.m
//  新浪微博
//
//  Created by yangwenjun on 14-12-12.
//  Copyright (c) 2014年 yangwenjun. All rights reserved.
//

#import "WBNavigationController.h"

@interface WBNavigationController ()

@end

@implementation WBNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
        UINavigationBar *bar = [UINavigationBar appearance];
        //    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbar_background.png"] forBarMetrics:UIBarMetricsDefault];
        [bar setBarTintColor:[UIColor whiteColor]];
    //设置所有的左右侧按钮的返回背景图片
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
//    [barItem setBackgroundImage:[UIImage imageNamed:@"navigationbar_button_background.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    [barItem setBackgroundImage:[UIImage imageNamed:@"navigationbar_button_background_pushed.png"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    [barItem setTitleTextAttributes:@{
                                      NSForegroundColorAttributeName : [UIColor darkGrayColor]
                                      } forState:UIControlStateNormal];
}

@end
