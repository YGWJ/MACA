//
//  ServiceManage.m
//  mg
//
//  Created by xiang ying on 14-8-3.
//  Copyright (c) 2014年 xiang ying. All rights reserved.
//

#import "ServiceManage.h"
#import "AFHTTPRequestOperationManager.h"

//#define Base_Url @"http://101.227.243.126:8082"
//#define Base_Url @"http://www.usuda.cn/verify.php/"
//#define Base_Url @"http://www.weather.com.cn/data/sk/101010100.html"
//#define Base_Url @"http://www.usuda.cn/funcms/index.php/controller_getjson/"
//#define Base_Url @"http://www.fangyuan1314.com/test/list1.php"
#define Base_Url @"http://www.zhanduiw.com/pnforum/index.php"


@interface ServiceManage()


-(void)requestMethod:(NSString*)method serviceName:(NSString*)service parmers:(NSDictionary*)parmers completeBlock:(void (^)(id obj)) callBack;

@end

@implementation ServiceManage

//获取单例
+(instancetype)shareInstance{
    static ServiceManage *serviceManage = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!serviceManage) {
            serviceManage = [[ServiceManage alloc] init];
        }
    });
    return serviceManage;
}

//请求基类
-(void)requestMethod:(NSString*)method serviceName:(NSString*)service parmers:(NSDictionary*)parmers completeBlock:(void (^)(id obj)) callBack{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
//    manager.responseSerializer.acceptableContentTypes
    NSString *requestUrl = [NSString stringWithFormat:@"%@%@",Base_Url,service];
    if ([method isEqualToString:@"POST"]) {
        [manager POST:requestUrl parameters:parmers success:^(AFHTTPRequestOperation *operation, id responseObject) {
            callBack(responseObject);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            callBack(nil);
        }];
    }else if ([method isEqualToString:@"PUT"]){
        [manager PUT:requestUrl parameters:parmers success:^(AFHTTPRequestOperation *operation, id responseObject) {
            callBack(responseObject);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            callBack(nil);
        }];
    }else {
        [manager GET:requestUrl parameters:parmers success:^(AFHTTPRequestOperation *operation, id responseObject) {
            callBack(responseObject);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            callBack(nil);
        }];
    }
}

-(void)DidConnectServer:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:parmers];
    [self requestMethod:@"GET" serviceName:@"" parmers:dic completeBlock:^(id obj) {
        ERROR_CODE code = ERROR_CODE_NONE;;
        NSLog(@"%@",obj);
        NSArray *arr = obj[@"key"];
        NSDictionary *dic1 = arr[16];
        NSLog(@"%@",dic1[@"name"]);
        callBack(code, obj);
    }];
}

//获取验证码
-(void)DidGetTokenCode:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:parmers];
    [self requestMethod:@"GET" serviceName:@"/interface/cinsert/sendCode/" parmers:dic completeBlock:^(id obj) {
        ERROR_CODE code = ERROR_CODE_RROR;
        if (obj && obj[@"code"]) {
            code = [obj[@"code"] intValue];
        }
        callBack(code, obj);
    }];
}

//注册
-(void)DidRegister:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:parmers];
    [self requestMethod:@"POST" serviceName:@"/interface/cinsert/createUser/" parmers:dic completeBlock:^(id obj) {
        ERROR_CODE code = ERROR_CODE_RROR;
        if (obj && obj[@"code"]) {
            code = [obj[@"code"] intValue];
        }
        callBack(code, obj);
    }];
}

//登录
-(void)DidLogin:(NSDictionary*)parmers completion:(void (^)(ERROR_CODE code, id obj)) callBack
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:parmers];
    [self requestMethod:@"POST" serviceName:@"/interface/csearch/loginUser/" parmers:dic completeBlock:^(id obj) {
        ERROR_CODE code = ERROR_CODE_RROR;
        if (obj && obj[@"code"]) {
            code = [obj[@"code"] intValue];
        }
        callBack(code, obj);
    }];
}

@end





