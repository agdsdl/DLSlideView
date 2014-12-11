//
//  TwoViewController.m
//  DLSlideController
//
//  Created by Dongle Su on 14-12-6.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"two didload");
}


//- (void)viewWillAppear:(BOOL)animated{
//    NSLog(@"two will appear");
//}
//- (void)viewDidAppear:(BOOL)animated{
//    NSLog(@"two appeared");
//}
//- (void)viewWillDisappear:(BOOL)animated{
//    NSLog(@"two will disappear");
//}
//- (void)viewDidDisappear:(BOOL)animated{
//    NSLog(@"two did disappear");
//}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"two didReceiveMemoryWarning");
}
- (void)dealloc{
    NSLog(@"two dealloc");
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
