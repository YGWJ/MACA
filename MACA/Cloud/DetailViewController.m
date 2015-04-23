//
//  DetailViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/23/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <UITableViewDelegate,UITableViewDataSource>

{
    NSMutableArray *titleArray;
    NSMutableArray *detailArray;
}

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addUI];
    
    titleArray = [[NSMutableArray alloc] initWithObjects:@"姓名：",@"医师介绍：",@"性别：",@"年龄：",@"职务：",@"医院信息：",@"科室信息：",@"是名医堂名医：",@"专业领域：他是一个很牛逼的人，比我还牛逼吗.太难了把额发发额发额发发发嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎",nil];

}

- (void)addUI
{
    
    self.title = @"医生详细信息";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"leftBack.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *DetailCellIdentifier = @"DetailCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DetailCellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:DetailCellIdentifier];
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20,(cell.frame.size.height - 20)/2, 320, 20)];
    label.text = titleArray[indexPath.row];
    [label setFont:[UIFont boldSystemFontOfSize:15.0f]];
    label.numberOfLines = 0;
    label.sizeToFit;
    [cell.contentView addSubview:label];
    //cell.textLabel.text = titleArray[indexPath.row];
//    switch (indexPath.row) {
//        case 0: {
//            cell.textLabel.text = @"姓名：";
//            break;
//            
//        }
//        case 1: {
//            cell.textLabel.text = @"性别：";
//            break;
//            
//        }
//        case 2: {
//            cell.textLabel.text = @"年龄：";
//            break;
//            
//        }
//        case 3: {
//            cell.textLabel.text = @"职务：";
//            break;
//            
//        }
//        case 4: {
//            cell.textLabel.text = @"医院信息：";
//            break;
//            
//        }
//        case 5: {
//            cell.textLabel.text = @"科室信息：";
//            break;
//            
//        }
//        case 6: {
//            cell.textLabel.text = @"是名医堂名医：";
//            break;
//            
//        }
//        case 7: {
//            cell.textLabel.text = @"专业领域：asdsafafafaagagaggggggggggsdasdasasczcacqcqcqcasczcqqc";
//            break;
//            
//        }
//        case 8: {
//            cell.textLabel.text = @"医师介绍：";
//            break;
//            
//        }
//        default:
//            break;
//    }
    
    return cell;
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
