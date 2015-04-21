//
//  DoctorData.h
//  MACA
//
//  Created by Yajun Gui on 4/21/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DoctorData : NSObject

@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *department;
@property (nonatomic,copy) NSString *position;
@property (nonatomic,copy) NSString *introduction;


-(id)initWithDict:(NSDictionary *)dict;
+(id)doctorDataWithDict:(NSDictionary *)dict;


@end
