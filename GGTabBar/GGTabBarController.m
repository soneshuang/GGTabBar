//
//  ViewController.m
//  GGTabBar
//
//  Created by qingyun on 15/11/26.
//  Copyright (c) 2015年 hnqingyun. All rights reserved.
//

#import "GGTabBarController.h"
#import "GGTFViewController.h"
#import "GGTyViewController.h"
#import "GGYAViewController.h"
#import "GGYRViewController.h"
#import "OtherViewController.h"

@interface GGTabBarController ()

@end

@implementation GGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTabBar];
    [self bindViewController];
    
}

-(void)setTabBar
{
    self.tabBar.tintColor = [UIColor colorWithRed:1.0 green:0.7 blue:0.9 alpha:1];
    CGFloat tabBarItemW = 50;
    CGFloat tabBarItemH = 40;
    CGFloat tabBarItemX = self.tabBar.center.x - tabBarItemW / 2;
    CGFloat tabBarItemY = (49 - tabBarItemH) / 2;
    
    UIButton *tabBarItem = [UIButton buttonWithType:UIButtonTypeCustom];
    tabBarItem.frame = CGRectMake(tabBarItemX, tabBarItemY, tabBarItemW, tabBarItemH);
    [self.tabBar addSubview:tabBarItem];
    [tabBarItem setBackgroundColor:[UIColor colorWithRed:1.0 green:0.7 blue:0.9 alpha:1]];
    [tabBarItem setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [tabBarItem addTarget:self action:@selector(composeAction:) forControlEvents:UIControlEventTouchUpInside];
    tabBarItem.layer.cornerRadius = 9;
}

-(void)composeAction:(UIButton *)tabBarItem
{

}

-(void)bindViewController
{
    GGTyViewController *ty = [[GGTyViewController alloc]init];
    UINavigationController *TY = [[UINavigationController alloc]initWithRootViewController:ty];
    GGYAViewController *ya = [[GGYAViewController alloc]init];
    UINavigationController *YA = [[UINavigationController alloc]initWithRootViewController:ya];
    GGTFViewController *tf = [[GGTFViewController alloc]init];
    UINavigationController *TF = [[UINavigationController alloc]initWithRootViewController:tf];
    GGYRViewController *yr  = [[GGYRViewController alloc]init];
    UINavigationController *YR = [[UINavigationController alloc]initWithRootViewController:yr];
    UIViewController *tempVC = [[UIViewController alloc] init];
    UIImageView *newImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"SOSI"]];
    newImage.frame = [UIScreen mainScreen].bounds;
    newImage.contentMode = UIViewContentModeScaleAspectFill;
    [tempVC.view addSubview:newImage];
    NSArray *vcs = @[TY,YA,tempVC,TF,YR];
    self.viewControllers = vcs;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
