//
//  DLFixedTabbarView.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLTabbarProtocol.h"

@interface DLFixedTabbarViewTabItem : NSObject
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) UIImage *selectedImage;
@property(nonatomic, strong) UIColor *titleColor;
@property(nonatomic, strong) UIColor *selectedTitleColor;
@end

@interface DLFixedTabbarView : UIView<DLTabbarProtocol>
@property(nonatomic, strong) UIImage *backgroundImage;
@property(nonatomic, strong) UIColor *trackColor;
@property(nonatomic, strong) NSArray *tabbarItems;
//- (void)addBarItemWithTitle:(NSString *)title titleColor:(UIColor *)titleColor image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

@property(nonatomic, assign) NSInteger selectedIndex;
@property(nonatomic, readonly) NSInteger tabbarCount;
@property(nonatomic, weak) id<DLTabbarDelegate> delegate;
- (void)switchingFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex percent:(float)percent;

@end
