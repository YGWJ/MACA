//
//  ServiceManage.h
//  mg
//
//  Created by xiang ying on 14-8-3.
//  Copyright (c) 2014年 xiang ying. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ERROR_CODE_NONE = 0,        //成功
    ERROR_CODE_RROR,
    ERROR_CODE_RequestFailed,   //连接失败或请求超时
}ERROR_CODE;

@interface ServiceManage : NSObject

+(instancetype)shareInstance;

-(void)DidConnectServer:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack;

//获取验证码
-(void)DidGetTokenCode:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack;

//注册
-(void)DidRegister:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack;

//登录
-(void)DidLogin:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack;

@end