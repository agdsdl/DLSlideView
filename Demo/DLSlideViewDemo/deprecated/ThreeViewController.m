//
//  ThreeViewController.m
//  DLSlideController
//
//  Created by Dongle Su on 14-12-6.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"three didload");
}


//- (void)viewWillAppear:(BOOL)animated{
//    NSLog(@"three will appear");
//}
//- (void)viewDidAppear:(BOOL)animated{
//    NSLog(@"three appeared");
//}
//- (void)viewWillDisappear:(BOOL)animated{
//    NSLog(@"three will disappear");
//}
//- (void)viewDidDisappear:(BOOL)animated{
//    NSLog(@"three did disappear");
//}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"three didReceiveMemoryWarning");
}
- (void)dealloc{
    NSLog(@"three dealloc");
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
