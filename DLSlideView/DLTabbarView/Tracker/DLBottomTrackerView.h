//
//  DLBottomTrackerView.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLTabbarTrackerViewProtocol.h"

@interface DLBottomTrackerView : UIView <DLTabbarTrackerViewProtocol>
@property(nonatomic, assign) CGFloat bottomPadding;
@property(nonatomic, assign) CGFloat leftPadding;
@property(nonatomic, assign) CGFloat rightPadding;

@property(nonatomic, weak) DLTabbarView* basedSlidebarView;

// DLSlideTrackerViewProtocol
- (void)addToSlideBar:(DLTabbarView *)slidebar;
- (void)selectAtIndex:(NSInteger)index itemView:(UIView<DLTabbarItemViewProtocol> *)itemView;

- (void)switchingFromIndex:(NSInteger)fromIndex itemView:(UIView<DLTabbarItemViewProtocol> *)fromView toIndex:(NSInteger)toIndex itemView:(UIView<DLTabbarItemViewProtocol> *)toView percent:(float)percent;

@end
