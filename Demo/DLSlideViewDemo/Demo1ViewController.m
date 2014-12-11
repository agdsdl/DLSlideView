//
//  Demo1ViewController.m
//  DLSlideViewDemo
//
//  Created by Dongle Su on 14-12-11.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "Demo1ViewController.h"
#import "DLImagedTabbarView.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface Demo1ViewController ()

@end

@implementation Demo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
    OneViewController *ctrl1 = [[OneViewController alloc] init];
    TwoViewController *ctrl2 = [[TwoViewController alloc] init];
    ThreeViewController *ctrl3 = [[ThreeViewController alloc] init];
    self.tabedSlideView.viewControllers = @[ctrl1, ctrl2, ctrl3];
    self.tabedSlideView.baseViewController = self;
    
    DLImagedTabbarItem *barItem1 = [[DLImagedTabbarItem alloc] init];
    barItem1.title = @"最新";
    barItem1.titleColor = [UIColor blackColor];
    barItem1.selectedTitleColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    barItem1.image = [UIImage imageNamed:@"goodsNew"];
    barItem1.selectedImage = [UIImage imageNamed:@"goodsNew_d"];
    
    DLImagedTabbarItem *barItem2 = [[DLImagedTabbarItem alloc] init];
    barItem2.title = @"最热";
    barItem2.titleColor = [UIColor blackColor];
    barItem2.selectedTitleColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    barItem2.image = [UIImage imageNamed:@"goodsHot"];
    barItem2.selectedImage = [UIImage imageNamed:@"goodsHot_d"];
    
    DLImagedTabbarItem *barItem3 = [[DLImagedTabbarItem alloc] init];
    barItem3.title = @"价格";
    barItem3.titleColor = [UIColor blackColor];
    barItem3.selectedTitleColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    barItem3.image = [UIImage imageNamed:@"goodsPrice"];
    barItem3.selectedImage = [UIImage imageNamed:@"goodsPrice_d"];
    
    DLImagedTabbarView *tabbarView = (DLImagedTabbarView *)self.tabedSlideView.tabarView;
    tabbarView.tabbarItems = @[barItem1, barItem2, barItem3];
    tabbarView.trackColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    
    self.tabedSlideView.selectedIndex = 0;

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
