//
//  DLBottomTrackView.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLSlideTrackerViewProtocol.h"

@interface DLBottomTrackView : UIView <DLSlideTrackerViewProtocol>
@property(nonatomic, assign) CGFloat bottomPadding;
@property(nonatomic, assign) CGFloat leftPadding;
@property(nonatomic, assign) CGFloat rightPadding;

@property(nonatomic, weak) DLSlideBarView* basedSlidebarView;

// DLSlideTrackerViewProtocol
- (void)addToSlideBar:(DLSlideBarView *)slidebar;
- (void)selectAtIndex:(NSInteger)index itemView:(UIView<DLSlideBarItemViewProtocol> *)itemView;

- (void)switchingFromIndex:(NSInteger)fromIndex itemView:(UIView<DLSlideBarItemViewProtocol> *)fromView toIndex:(NSInteger)toIndex itemView:(UIView<DLSlideBarItemViewProtocol> *)toView percent:(float)percent;

@end
