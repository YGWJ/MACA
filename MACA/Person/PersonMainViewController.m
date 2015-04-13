//
//  PersonMainViewController.m
//  MACA
//
//  Created by ywj on 15-3-13.
//  Copyright (c) 2015年 yangwenjun. All rights reserved.
//

#import "PersonMainViewController.h"
#import "RegisterViewController.h"
#import "LoginViewController.h"

//注册按钮宽高
#define RegisterBtnWidth ScreenWidth * 0.8
#define RegisterBtnHeight 40
//登陆按钮宽高
#define LoginBtnWidth ScreenWidth * 0.8
#define LoginBtnHeight 40


@interface PersonMainViewController ()
{
    NSArray *_dataArray;

    IBOutlet UIImageView *_iconView;
    
    IBOutlet UIButton *_registerBtn;
    IBOutlet UIButton *_loginBtn;
}


@end

@implementation PersonMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
    [self loadPlist];
    [self addIconView];
    [self addRegisterBtn];
    [self addLoginBtn];
    
}

//添加头像
- (void)addIconView
{
    _iconView.image =[UIImage imageNamed:@"rearing.png"];
}

//添加注册按钮
- (void)addRegisterBtn
{
    [_registerBtn.layer setMasksToBounds:YES];
    [_registerBtn.layer setCornerRadius:10.0];
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    
}

//添加登陆按钮
- (void)addLoginBtn
{
    [_loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginBtn.layer setMasksToBounds:YES];
    [_loginBtn.layer setCornerRadius:10.0];

}

- (IBAction)registerBtnClick:(id)sender {
    RegisterViewController *rgster = [[RegisterViewController alloc] init];
    [self.navigationController pushViewController:rgster animated:YES];
}


- (IBAction)loginBtnClick:(id)sender {
    LoginViewController *login = [[LoginViewController alloc] init];
    [self.navigationController pushViewController:login animated:YES];
}



//读取plist文件
- (void)loadPlist
{
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Person" withExtension:@"plist"];
    _dataArray = [NSArray arrayWithContentsOfURL:url];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = _dataArray[indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}

@end
