//
//  DLSlideView.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-7.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLSlideView;

@protocol DLSlideViewDataSource <NSObject>
- (int)numberOfControllersInDLSlideView:(DLSlideView *)sender;
- (UIViewController *)DLSlideView:(DLSlideView *)sender controllerAt:(int)index;
@end

@protocol DLSlideViewDelegate <NSObject>
@optional
- (void)DLSlideView:(DLSlideView *)slide switchingFrom:(int)oldIndex to:(int)toIndex percent:(float)percent;
- (void)DLSlideView:(DLSlideView *)slide didSwitchTo:(int)index;
- (void)DLSlideView:(DLSlideView *)slide switchCanceled:(int)oldIndex;
@end

@interface DLSlideView : UIView
//@property(nonatomic, strong) NSArray *viewControllers;
@property(nonatomic, assign) int selectedIndex;
@property(nonatomic, weak) UIViewController *baseViewController;
@property(nonatomic, weak) id<DLSlideViewDelegate>delegate;
@property(nonatomic, weak) id<DLSlideViewDataSource>dataSource;
- (void)switchTo:(int)index;

@end
