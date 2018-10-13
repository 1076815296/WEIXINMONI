//
//  ZWJTabBarViewController.m
//  WeiXin
//
//  Created by 林泉 on 2018/10/13.
//  Copyright © 2018年 ZWJ. All rights reserved.
//

#import "ZWJTabBarViewController.h"
#import "ZWJINavigationController.h"
#import "ZWJWeiXinViewController.h"
#import "ZWJMeViewController.h"
#import "ZWJMailListViewController.h"
#import "ZWJFindViewController.h"



@interface ZWJTabBarViewController ()

@end

@implementation ZWJTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //添加子控制器
    [self addAllChildViewController];
    
    //添加按钮
    [self addBarButton];
    
    
    
    
    
}

- (void)addAllChildViewController{
    
    ZWJWeiXinViewController *weiXinVC = [[ZWJWeiXinViewController alloc] init];
    ZWJINavigationController *navVc = [[ZWJINavigationController alloc] initWithRootViewController:weiXinVC];
    [self addChildViewController:navVc];
    
    
    ZWJMailListViewController *mailListVC = [[ZWJMailListViewController alloc] init];
    ZWJINavigationController *navVc1 = [[ZWJINavigationController alloc] initWithRootViewController:mailListVC];
    [self addChildViewController:navVc1];
    
    ZWJFindViewController *findVC = [[ZWJFindViewController alloc] init];
    ZWJINavigationController *navVc2 = [[ZWJINavigationController alloc] initWithRootViewController:findVC];
    [self addChildViewController:navVc2];
    
    ZWJMeViewController *meVC = [[ZWJMeViewController alloc] init];
    ZWJINavigationController *navVc3 = [[ZWJINavigationController alloc] initWithRootViewController:meVC];
    [self addChildViewController:navVc3];
    
    NSLog(@"%@",self.childViewControllers);
    
}

- (void)addBarButton{
    
    UINavigationController *nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"微信";
    nav.tabBarItem.image = [UIImage imageNamed:@"weixin"];
    
    
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"通讯录";
    
    
    UINavigationController *nav2 = self.childViewControllers[2];
    nav2.tabBarItem.title = @"发现";
    
    UINavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"我";
    
    
    
}
     
     
     
     
     
@end
