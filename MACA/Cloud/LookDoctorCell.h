//
//  LookDoctorCell.h
//  MACA
//
//  Created by Yajun Gui on 4/21/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LookDoctorCell : UITableViewCell

//照片
@property (strong, nonatomic) IBOutlet UIImageView *icon;
//姓名
@property (strong, nonatomic) IBOutlet UILabel *name;
//科室
@property (strong, nonatomic) IBOutlet UILabel *department;
//职位
@property (strong, nonatomic) IBOutlet UILabel *position;



@end
