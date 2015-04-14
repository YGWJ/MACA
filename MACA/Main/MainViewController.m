//
//  MainViewController.m
//  WhereToBuy
//
//  Created by JingMo 04 on 15-1-26.
//  Copyright (c) 2015年 JingMo. All rights reserved.
//

//测试github  是否成功   成功请你回答    孟凡杰  第二次测试  看看刻有
//第三次测试
//测试上传为什么我改的int还原啦


#import "MainViewController.h"
#import "Tools.h"
#import "CloudMainViewController.h"
#import "WBNavigationController.h"
#import "BabyMainViewController.h"
#import "FindMainViewController.h"
#import "PersonMainViewController.h"

@interface MainViewController ()<UINavigationControllerDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
    //1.导入其他控制器的view
    [self addAllChildViewControllers];
    //2.初始化Dock
    [self addDocks];
    //3.加监听手势
    [self addGesture];
}

//初始化所有的控制器
- (void) addAllChildViewControllers
{
    //运医院控制器
    CloudMainViewController *cloud = [[CloudMainViewController alloc] init];
    WBNavigationController *cloudNav = [[WBNavigationController alloc] initWithRootViewController:cloud];
    cloudNav.delegate = self;
    [self addChildViewController:cloudNav];
    
    //运医院控制器
    BabyMainViewController *baby = [[BabyMainViewController alloc] init];
    WBNavigationController *babyNav = [[WBNavigationController alloc] initWithRootViewController:baby];
    babyNav.delegate = self;
    [self addChildViewController:babyNav];
    
    //运医院控制器
    FindMainViewController *find = [[FindMainViewController alloc] init];
    WBNavigationController *findNav = [[WBNavigationController alloc] initWithRootViewController:find];
    findNav.delegate = self;
    [self addChildViewController:findNav];
    
    //运医院控制器
    PersonMainViewController *person = [[PersonMainViewController alloc] init];
    WBNavigationController *personNav = [[WBNavigationController alloc] initWithRootViewController:person];
    personNav.delegate = self;
    [self addChildViewController:personNav];
}

//增加监听手势
- (void)addGesture
{
    //向左的滑动手势
    UISwipeGestureRecognizer *swipe1 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeGesture:)];
    swipe1.numberOfTouchesRequired = 1;
    swipe1.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipe1];
    
    //向右的滑动手势
    UISwipeGestureRecognizer *swipe2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeGesture:)];
    swipe2.numberOfTouchesRequired = 1;
    swipe2.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipe2];
}

//轻扫手势的监听方法
- (void)swipeGesture:(UISwipeGestureRecognizer *)gessture
{
    if (gessture.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"向右滑动 %ld",self.dock.selectedIndex);
        if (self.dock.selectedIndex == 0) {
            return;
        }
        [self.dock itemClick:self.dock.subviews[self.dock.selectedIndex - 1]];
    }else if(gessture.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        NSLog(@"向左滑动 %ld",self.dock.selectedIndex);
        if (self.dock.selectedIndex == 3) {
            return;
        }
        [self.dock itemClick:self.dock.subviews[self.dock.selectedIndex + 1]];
    }
}

//初始化Dock
- (void) addDocks
{
    //2.往dock里面填充内容
    [self.dock addItemWithIcon:@"home.png" andTitle:@"云医"];
    [self.dock addItemWithIcon:@"baby.png" andTitle:@"幼儿"];
    [self.dock addItemWithIcon:@"discover.png" andTitle:@"发现"];
    [self.dock addItemWithIcon:@"localperson.png" andTitle:@"个人"];
    UIView *viewLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 1)];
    [viewLine setBackgroundColor:[Tools colorWithRed:221 angGreen:221 andBlue:221]];
    [self.dock addSubview:viewLine];
    [self.dock itemClick:self.dock.subviews[0]];
}

#pragma mark 实现导航控制器代理方法
// 导航控制器即将显示新的控制器
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    // 1.获得当期导航控制器的根控制器
    UIViewController *root = navigationController.viewControllers[0];
    if (root != viewController) { // 不是根控制器
        NSLog(@"不是跟控制器");
        // {0, 20}, {320, 460}
        // 2.拉长导航控制器的view
        CGRect frame = navigationController.view.frame;
        frame.size.height = [UIScreen mainScreen].applicationFrame.size.height + 20;
        navigationController.view.frame = frame;
        
        // 3.添加Dock到根控制器的view上面
        [self.dock removeFromSuperview];
        CGRect dockFrame = self.dock.frame;
        dockFrame.origin.y = root.view.frame.size.height - self.dock.frame.size.height;
        if ([root.view isKindOfClass:[UIScrollView class]]) { // 根控制器的view是能滚动
            UIScrollView *scroll = (UIScrollView *)root.view;
            dockFrame.origin.y += scroll.contentOffset.y;
        }
        self.dock.frame = dockFrame;
        [root.view addSubview:self.dock];
        
        // 4.添加左上角的返回按钮
//        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithIcon:@"navigationbar_back.png" highlightedIcon:@"navigationbar_back_highlighted.png" target:self action:@selector(back)];
    }
    if (viewController == root) {
        NSLog(@"是跟控制器");
        // 1.让导航控制器view的高度还原
        CGRect frame = navigationController.view.frame;
        frame.size.height = [UIScreen mainScreen].applicationFrame.size.height - self.dock.frame.size.height + 20;
        navigationController.view.frame = frame;
        
        // 2.添加Dock到mainView上面
        [self.dock removeFromSuperview];
        CGRect dockFrame = self.dock.frame;
        // 调整dock的y值
        dockFrame.origin.y = self.view.frame.size.height - self.dock.frame.size.height;
        self.dock.frame = dockFrame;
        [self.view addSubview:self.dock];
    }
}

- (void)back
{
    [self.childViewControllers[self.dock.selectedIndex] popViewControllerAnimated:YES];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
//    UIViewController *root = navigationController.viewControllers[0];
    
}

@end
