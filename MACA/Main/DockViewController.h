//
//  DockViewController.h
//  WhereToBuy
//
//  Created by JingMo 04 on 15-1-29.
//  Copyright (c) 2015年 JingMo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dock.h"

@interface DockViewController : UIViewController
//{
//    Dock *_dock;
//}

@property (nonatomic, readonly) UIViewController *selectedController;
@property (strong, nonatomic) Dock *dock;

@end
