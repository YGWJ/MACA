//
//  BaseViewController.h
//  WhereToBuy
//
//  Created by JingMo 04 on 15-1-4.
//  Copyright (c) 2015年 JingMo. All rights reserved.
//

#import <UIKit/UIKit.h>
#define IPhone4 ([UIScreen mainScreen].bounds.size.height == 480)
#define IPhone5 ([UIScreen mainScreen].bounds.size.height == 568)
#define IPhone6 ([UIScreen mainScreen].bounds.size.height == 667)
#define IPhone6P ([UIScreen mainScreen].bounds.size.height == 736)

//获取屏幕宽高
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height

//状态栏宽高
#define StatusWidth [[UIApplication sharedApplication] statusBarFrame].size.width
#define StatusHeight [[UIApplication sharedApplication] statusBarFrame].size.height

//导航栏宽高
#define navigationBarWidth [[UIScreen mainScreen] bounds].size.width
#define navigationBarHeight 44

@interface BaseViewController : UIViewController

@end
