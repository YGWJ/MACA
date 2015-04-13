//
//  BabyMainViewController.m
//  MACA
//
//  Created by ywj on 15-3-13.
//  Copyright (c) 2015年 yangwenjun. All rights reserved.
//

#import "BabyMainViewController.h"
#import "ChoseBabyViewController.h"
#import "AddBabyViewController.h"


@interface BabyMainViewController ()

@end

@implementation BabyMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"宝贝";
}


- (IBAction)selectBaby:(UIButton *)sender {
    ChoseBabyViewController *choseBaby = [[ChoseBabyViewController alloc] init];
    [self.navigationController pushViewController:choseBaby animated:YES];
}


- (IBAction)addBaby:(UIButton *)sender {
    AddBabyViewController *addBaby = [[AddBabyViewController alloc] init];
    [self.navigationController pushViewController:addBaby animated:YES];
}

@end
