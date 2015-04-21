//
//  DoctorData.m
//  MACA
//
//  Created by Yajun Gui on 4/21/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "DoctorData.h"

@implementation DoctorData

- (id)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.name = dict[@"name"];
        self.icon = dict[@"icon"];
        self.department = dict[@"department"];
        self.position = dict[@"position"];
        self.introduction = dict[@"introduction"];
    }
    return self;
}

+ (id)doctorDataWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end
