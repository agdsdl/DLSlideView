//
//  DLTabedSlideView.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLSlideTabbarProtocol.h"

@interface DLTabedbarItem : NSObject
@property (nonatomic, strong) NSString *title;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) UIImage *selectedImage;

+ (DLTabedbarItem *)itemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;
@end

@class DLTabedSlideView;

@protocol DLTabedSlideViewDelegate <NSObject>
- (int)numberOfTabsInDLTabedSlideView:(DLTabedSlideView *)sender;
- (UIViewController *)DLTabedSlideView:(DLTabedSlideView *)sender controllerAt:(int)index;
@optional
- (void)DLTabedSlideView:(DLTabedSlideView *)sender didSelectedAt:(int)index;
@end

@interface DLTabedSlideView : UIView<DLSlideTabbarDelegate>
//@property(nonatomic, strong) NSArray *viewControllers;
@property(nonatomic, weak) UIViewController *baseViewController;
@property(nonatomic, assign) int selectedIndex;


//set tabbar properties.
@property (nonatomic, strong) UIColor *tabItemNormalColor;
@property (nonatomic, strong) UIColor *tabItemSelectedColor;
@property(nonatomic, strong) UIImage *tabbarBackgroundImage;
@property(nonatomic, strong) UIColor *tabbarTrackColor;
@property(nonatomic, strong) NSArray *tabbarItems;
@property(nonatomic, assign) float tabbarHeight;
@property(nonatomic, assign) float tabbarBottomSpacing;

// cache properties
@property(nonatomic, assign) int cacheCount;

- (void)buildTabbar;

//@property(nonatomic, strong) IBOutlet id<DLSlideTabbarProtocol> tabarView;


@property(nonatomic, weak)IBOutlet id<DLTabedSlideViewDelegate>delegate;

@end
