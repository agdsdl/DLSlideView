//
//  DLTabedSlideView.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLSlideTabbarProtocol.h"

@protocol DLTabedSlideViewDelegate <NSObject>


@end

@interface DLTabedSlideView : UIView<DLSlideTabbarDelegate>
@property(nonatomic, strong) NSArray *viewControllers;
@property(nonatomic, assign) int selectedIndex;
@property(nonatomic, weak) UIViewController *baseViewController;
@property(nonatomic, strong) IBOutlet id<DLSlideTabbarProtocol> tabarView;


@property(nonatomic, weak) id<DLTabedSlideViewDelegate>delegate;

@end
