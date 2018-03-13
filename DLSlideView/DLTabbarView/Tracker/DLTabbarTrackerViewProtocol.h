//
//  DLTrackViewProtocol.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#ifndef DLTabbarTrackerViewProtocol_h
#define DLTabbarTrackerViewProtocol_h

#import "DLTabbarItemViewProtocol.h"

@class DLTabbarView;

@protocol DLTabbarTrackerViewProtocol <NSObject>
- (void)addToSlideBar:(DLTabbarView *)slidebar;
- (void)selectAtIndex:(NSInteger)index itemView:(UIView<DLTabbarItemViewProtocol> *)itemView;

- (void)switchingFromIndex:(NSInteger)fromIndex itemView:(UIView<DLTabbarItemViewProtocol> *)fromView toIndex:(NSInteger)toIndex itemView:(UIView<DLTabbarItemViewProtocol> *)toView percent:(float)percent;

@end

#endif /* DLTabbarTrackerViewProtocol_h */
