//
//  DLTabItemViewProtocol.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#ifndef DLSlideBarItemViewProtocol_h
#define DLSlideBarItemViewProtocol_h

@protocol DLSlideBarItemViewProtocol <NSObject>
- (void)setSelectionPercent:(CGFloat)percent;
@property(nonatomic, assign) BOOL selected;
@property(nonatomic, readonly) UIView *trackOnView;
@end

#endif /* DLSlideBarItemViewProtocol_h */
