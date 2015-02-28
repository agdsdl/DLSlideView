//
//  PageNViewController.m
//  DLSlideViewDemo
//
//  Created by Dongle Su on 15-2-13.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import "PageNViewController.h"

@interface PageNViewController ()

@end

@implementation PageNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"page%@ viewDidLoad", self.pageLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"page%@ willAppear", self.pageLabel.text);
}
- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"page%@ Appear", self.pageLabel.text);
}
- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"page%@ willDisappear", self.pageLabel.text);
}
- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"page%@ Disappear", self.pageLabel.text);
}
//-(void)dealloc{
//    NSLog(@"page%@ dealloc", self.pageLabel.text);
//}
//
@end
