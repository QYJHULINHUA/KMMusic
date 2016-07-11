//
//  QY_TabBarViewController.m
//  Demo_IphoneInfo
//
//  Created by ihefe－hulinhua on 2/19/16.
//  Copyright © 2016 ihefe_hlh. All rights reserved.
//

#import "KMMTabBarViewController.h"
#import "KMM_FViewController.h"
#import "KMM_LViewController.h"
#import "KMM_MViewController.h"


@interface KMMTabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation KMMTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    KMM_FViewController *c1 = [[KMM_FViewController alloc] init];
    c1.tabBarItem.image = [UIImage imageNamed:@"netmusci"];
    c1.tabBarItem.title = @"在线音乐";
    
    KMM_LViewController *c2 = [[KMM_LViewController alloc] init];
    c2.tabBarItem.image = [UIImage imageNamed:@"locationMusic"];
    c2.tabBarItem.title = @"本地音乐";
    
    KMM_MViewController *c3 = [[KMM_MViewController alloc] init];
    c3.tabBarItem.image = [UIImage imageNamed:@"myset"];
    c3.tabBarItem.title = @"我的";
    
    NSArray *VC_arr = @[c1,c2,c3];
    self.viewControllers = VC_arr;
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.delegate = self;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    self.title = viewController.tabBarItem.title;
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
