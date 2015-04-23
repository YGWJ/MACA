//
//  LookDoctorViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/20/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "LookDoctorViewController.h"
#import "DoctorIntroduceViewController.h"
#import "LookDoctorCell.h"
#import "DoctorData.h"

@interface LookDoctorViewController ()

{
    NSMutableArray *_doctorData;
}

@end

@implementation LookDoctorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加UI
    [self addUI];
    //加载Plist
    [self loadPlist];
}

- (void)addUI
{
    self.title = @"看医生";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"leftBack.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}

- (void)loadPlist
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DoctorIntroduce" ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    
    _doctorData = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        DoctorData *d = [DoctorData doctorDataWithDict:dict];
        [_doctorData addObject:d];
    }
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source

//设置每一行高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 82;
}

//section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//row
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _doctorData.count;
}


//设置自定义的cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *lookDoctorCellIdentifier = @"lookDoctorCellIdentifier";
    LookDoctorCell *cell = (LookDoctorCell *)[tableView dequeueReusableCellWithIdentifier:lookDoctorCellIdentifier];
    
    
    if(cell == nil){
        //加载自定义cell
        cell = [[[NSBundle mainBundle] loadNibNamed:@"LookDoctorCell" owner:self options:nil] lastObject];
    }
    
    //加载_doctorData数据
    DoctorData *Ddata = _doctorData[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:Ddata.icon];
    cell.name.text = Ddata.name;
    cell.department.text = Ddata.department;
    cell.position.text = Ddata.position;
    
    //设置无分割线
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    return cell;
}


//选中某一个cell跳转到  DoctorIntroduceViewController
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DoctorData *Ddata = _doctorData[indexPath.row];
    DoctorIntroduceViewController *docInVC = [[DoctorIntroduceViewController alloc] init];
    //对 DoctorIntroduceViewController 中的属性进行赋值,对应行显示对应信息
    docInVC.dIcon = Ddata.icon;
    docInVC.dName = Ddata.name;
    docInVC.dDepartment = Ddata.department;
    docInVC.dPosition = Ddata.position;
    docInVC.dIntroduction = Ddata.introduction;
    [self.navigationController pushViewController:docInVC animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
