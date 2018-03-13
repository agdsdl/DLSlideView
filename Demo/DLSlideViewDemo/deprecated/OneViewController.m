//
//  OneViewController.m
//  DLSlideController
//
//  Created by Dongle Su on 14-12-6.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"one didload");
}

//- (void)viewWillAppear:(BOOL)animated{
//    NSLog(@"one will appear");
//}
//- (void)viewDidAppear:(BOOL)animated{
//    NSLog(@"one appeared");
//}
//- (void)viewWillDisappear:(BOOL)animated{
//    NSLog(@"one will disappear");
//}
//- (void)viewDidDisappear:(BOOL)animated{
//    NSLog(@"one did disappear");
//}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"one didReceiveMemoryWarning");
}
- (void)dealloc{
    NSLog(@"one dealloc");
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
