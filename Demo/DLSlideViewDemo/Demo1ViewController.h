//
//  Demo1ViewController.h
//  DLSlideViewDemo
//
//  Created by Dongle Su on 14-12-11.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLTabedSlideView.h"

@interface Demo1ViewController : UIViewController<DLTabedSlideViewDelegate>
@property (weak, nonatomic) IBOutlet DLTabedSlideView *tabedSlideView;

@end
