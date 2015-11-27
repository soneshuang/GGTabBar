//
//  GGYAViewController.m
//  GGTabBar
//
//  Created by qingyun on 15/11/26.
//  Copyright (c) 2015年 hnqingyun. All rights reserved.
//

#import "GGYAViewController.h"
#import "OtherViewController.h"

@interface GGYAViewController ()

@end

@implementation GGYAViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        UITabBarItem *itm = [[UITabBarItem alloc]initWithTitle:@"小鹿" image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageNamed:@"tabbar_discover"]];
        self.tabBarItem = itm;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255.0/255.0 green:190.0/255.0 blue:230.0/255.0 alpha:1];
    UIImageView *newImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LimYoonA"]];
    newImage.frame = [UIScreen mainScreen].bounds;
    newImage.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:newImage];
    self.navigationController.hidesBarsOnTap = YES;
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:@"❤️" style:UIBarButtonItemStylePlain target:self action:nil];
    UIButton *newBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    [newBtn setTitle:@"林允儿" forState:UIControlStateNormal];
    [newBtn setTintColor:[UIColor blackColor]];
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(next:)];
    right.tag = 102;
    self.navigationItem.leftBarButtonItem = left;
    self.navigationItem.rightBarButtonItem = right;
    self.navigationItem.titleView = newBtn;
}

-(void)next:(UIBarButtonItem *)barbtnItem
{
    OtherViewController *v2 = [[OtherViewController alloc]init];
    [v2 changeImage:barbtnItem.tag];
    [self.navigationController pushViewController:v2 animated:YES];
    
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
