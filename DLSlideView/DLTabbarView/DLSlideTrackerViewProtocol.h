//
//  DLTrackViewProtocol.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#ifndef DLSlideTrackerViewProtocol_h
#define DLSlideTrackerViewProtocol_h

#import "DLSlideBarItemViewProtocol.h"

@class DLSlideBarView;

@protocol DLSlideTrackerViewProtocol <NSObject>
- (void)addToSlideBar:(DLSlideBarView *)slidebar;
- (void)selectAtIndex:(NSInteger)index itemView:(UIView<DLSlideBarItemViewProtocol> *)itemView;

- (void)switchingFromIndex:(NSInteger)fromIndex itemView:(UIView<DLSlideBarItemViewProtocol> *)fromView toIndex:(NSInteger)toIndex itemView:(UIView<DLSlideBarItemViewProtocol> *)toView percent:(float)percent;

@end

#endif /* DLSlideTrackerViewProtocol_h */
