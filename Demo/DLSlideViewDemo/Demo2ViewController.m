//
//  Demo2ViewController.m
//  DLSlideViewDemo
//
//  Created by Dongle Su on 14-12-11.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "Demo2ViewController.h"
#import "DLScrollTabbarView.h"
#import "DLLRUCache.h"
#import "PageNViewController.h"

@interface Demo2ViewController ()

@end

@implementation Demo2ViewController{
    NSMutableArray *itemArray_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    DLLRUCache *cache = [[DLLRUCache alloc] initWithCount:6];
    DLScrollTabbarView *tabbar = [[DLScrollTabbarView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 34)];
    tabbar.tabItemNormalColor = [UIColor blackColor];
    tabbar.tabItemSelectedColor = [UIColor redColor];
    tabbar.tabItemNormalFontSize = 14.0f;
    tabbar.trackColor = [UIColor redColor];
    itemArray_ = [NSMutableArray array];
    DLScrollTabbarItem *item = [DLScrollTabbarItem itemWithTitle:@"推荐" width:80];
    [itemArray_ addObject:item];
    for (int i=0; i<10; i++) {
        item = [DLScrollTabbarItem itemWithTitle:[NSString stringWithFormat:@"页面%d", i+1] width:50];
        [itemArray_ addObject:item];
    }
    tabbar.tabbarItems = itemArray_;

    self.slideView.tabbar = tabbar;
    self.slideView.cache = cache;
    self.slideView.tabbarBottomSpacing = 5;
    self.slideView.baseViewController = self;
    [self.slideView setup];
    self.slideView.selectedIndex = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfTabsInDLCustomSlideView:(DLCustomSlideView *)sender{
    return itemArray_.count;
}

- (UIViewController *)DLCustomSlideView:(DLCustomSlideView *)sender controllerAt:(NSInteger)index{
    PageNViewController *ctrl = [[PageNViewController alloc] init];
    int32_t rgbValue = rand();
    ctrl.view.backgroundColor = [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
    ctrl.pageLabel.text = [NSString stringWithFormat:@"%ld", (long)index];
    return ctrl;
}

@end
