//
//  DoctorIntroduceViewController.h
//  MACA
//
//  Created by Yajun Gui on 4/21/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface DoctorIntroduceViewController : BaseViewController



@property (nonatomic,retain) IBOutlet UIImageView *imageV1;
@property (nonatomic,retain) IBOutlet UIImageView *imageV2;

@property (strong, nonatomic) IBOutlet UIImageView *icon;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *department;
@property (strong, nonatomic) IBOutlet UILabel *position;


@property (nonatomic,copy) NSString *dIcon;
@property (nonatomic,copy) NSString *dName;
@property (nonatomic,copy) NSString *dDepartment;
@property (nonatomic,copy) NSString *dPosition;
@property (nonatomic,copy) NSString *dIntroduction;

@property (strong, nonatomic) IBOutlet UITextView *textView;


@end
