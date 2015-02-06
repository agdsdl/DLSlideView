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
//    self.tabedSlideView.viewControllers = @[ctrl1, ctrl2, ctrl3];
    self.tabedSlideView.baseViewController = self;
    self.tabedSlideView.tabItemNormalColor = [UIColor blackColor];
    self.tabedSlideView.tabItemSelectedColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    self.tabedSlideView.tabbarTrackColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    self.tabedSlideView.tabbarBackgroundImage = [UIImage imageNamed:@"tabbarBk"];
    self.tabedSlideView.tabbarBottomSpacing = 3.0;
    
    DLTabedbarItem *item1 = [DLTabedbarItem itemWithTitle:@"最新" image:[UIImage imageNamed:@"goodsNew"] selectedImage:[UIImage imageNamed:@"goodsNew_d"]];
    DLTabedbarItem *item2 = [DLTabedbarItem itemWithTitle:@"最热" image:[UIImage imageNamed:@"goodsHot"] selectedImage:[UIImage imageNamed:@"goodsHot_d"]];
    DLTabedbarItem *item3 = [DLTabedbarItem itemWithTitle:@"价格" image:[UIImage imageNamed:@"goodsPrice"] selectedImage:[UIImage imageNamed:@"goodsPrice_d"]];
    self.tabedSlideView.tabbarItems = @[item1, item2, item3];
    [self.tabedSlideView buildTabbar];
    
    self.tabedSlideView.selectedIndex = 0;

//    DLImagedTabbarItem *barItem1 = [[DLImagedTabbarItem alloc] init];
//    barItem1.title = @"最新";
//    barItem1.titleColor = [UIColor blackColor];
//    barItem1.selectedTitleColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
//    barItem1.image = [UIImage imageNamed:@"goodsNew"];
//    barItem1.selectedImage = [UIImage imageNamed:@"goodsNew_d"];
//    
//    DLImagedTabbarItem *barItem2 = [[DLImagedTabbarItem alloc] init];
//    barItem2.title = @"最热";
//    barItem2.titleColor = [UIColor blackColor];
//    barItem2.selectedTitleColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
//    barItem2.image = [UIImage imageNamed:@"goodsHot"];
//    barItem2.selectedImage = [UIImage imageNamed:@"goodsHot_d"];
//    
//    DLImagedTabbarItem *barItem3 = [[DLImagedTabbarItem alloc] init];
//    barItem3.title = @"价格";
//    barItem3.titleColor = [UIColor blackColor];
//    barItem3.selectedTitleColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
//    barItem3.image = [UIImage imageNamed:@"goodsPrice"];
//    barItem3.selectedImage = [UIImage imageNamed:@"goodsPrice_d"];
//    
//    DLImagedTabbarView *tabbarView = (DLImagedTabbarView *)self.tabedSlideView.tabarView;
//    tabbarView.tabbarItems = @[barItem1, barItem2, barItem3];
//    tabbarView.trackColor = [UIColor colorWithRed:0.833 green:0.052 blue:0.130 alpha:1.000];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfTabsInDLTabedSlideView:(DLTabedSlideView *)sender{
    return 3;
}
- (UIViewController *)DLTabedSlideView:(DLTabedSlideView *)sender controllerAt:(NSInteger)index{
    switch (index) {
        case 0:
        {
            OneViewController *ctrl = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"one"];
            //OneViewController *ctrl = [[OneViewController alloc] init];
            return ctrl;
        }
        case 1:
        {
            TwoViewController *ctrl = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"two"];
            //TwoViewController *ctrl = [[TwoViewController alloc] init];
            return ctrl;
        }
        case 2:
        {
            ThreeViewController *ctrl = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"three"];
            //ThreeViewController *ctrl = [[ThreeViewController alloc] init];
            return ctrl;
        }

        default:
            return nil;
    }
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
