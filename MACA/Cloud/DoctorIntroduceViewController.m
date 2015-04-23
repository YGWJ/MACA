//
//  DoctorIntroduceViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/21/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "DoctorIntroduceViewController.h"
#import "LookDoctorViewController.h"
#import "LookDoctorCell.h"
#import "DoctorData.h"
#import "DetailViewController.h"

@interface DoctorIntroduceViewController ()

@end

@implementation DoctorIntroduceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加UI
    [self addUI];
    //赋值到UI界面显示
    [self initData];
}

- (void)addUI
{
    self.title = @"医生介绍";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"leftBack.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
    CALayer *layer1 = [_imageV1 layer];
    layer1.borderColor = [[UIColor lightGrayColor] CGColor];
    layer1.borderWidth = 1.0f;
    
    CALayer *layer2 = [_imageV2 layer];
    layer2.borderColor = [[UIColor lightGrayColor] CGColor];
    layer2.borderWidth = 1.0f;
}

- (void)initData
{
    _icon.image = [UIImage imageNamed:_dIcon];
    _name.text = _dName;
    _department.text = _dDepartment;
    _position.text = _dPosition;
    _textView.text= _dIntroduction;
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//详细信息
- (IBAction)detailBtnClick:(id)sender {
    NSLog(@"详细信息");
    DetailViewController *detail = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:detail animated:YES];
}



//"查看医生服务"按钮点击
- (IBAction)doctorServiceClick:(id)sender {
    NSLog(@"查看医生服务");
}


@end
