//
//  Demo2ViewController.h
//  DLSlideViewDemo
//
//  Created by Dongle Su on 14-12-11.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLCustomSlideView.h"

@interface Demo2ViewController : UIViewController<DLCustomSlideViewDelegate>
@property (weak, nonatomic) IBOutlet DLCustomSlideView *slideView;

@end
