//
//  OtherViewController.m
//  GGTabBar
//
//  Created by qingyun on 15/11/26.
//  Copyright (c) 2015年 hnqingyun. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()
@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)changeImage:(NSInteger)tag
{
    UIImageView * changeImage = [[UIImageView alloc]init];
    changeImage.frame = [UIScreen mainScreen].bounds;
    changeImage.contentMode = UIViewContentModeScaleAspectFill;
    UIButton *newBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    [newBtn setTintColor:[UIColor blackColor]];
    switch (tag) {
        case 101:{
            [newBtn setTitle:@"徐贤" forState:UIControlStateNormal];
            changeImage.image = [UIImage imageNamed:@"Seohyun"];
            break;
        }
        case 102:{
            [newBtn setTitle:@"秀英" forState:UIControlStateNormal];
            changeImage.image = [UIImage imageNamed:@"SooYoung"];
            break;
        }
        case 103:{
            [newBtn setTitle:@"顺圭" forState:UIControlStateNormal];
            changeImage.image = [UIImage imageNamed:@"Suuny"];
            break;
        }
        case 104:{
            [newBtn setTitle:@"孝渊" forState:UIControlStateNormal];
            changeImage.image = [UIImage imageNamed:@"KimHyoYeon"];
            break;
        }
        default:
            break;
    }
    self.navigationItem.titleView = newBtn;
    [self.view addSubview:changeImage];
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
