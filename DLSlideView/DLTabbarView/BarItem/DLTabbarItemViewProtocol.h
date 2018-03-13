//
//  DLTabItemViewProtocol.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#ifndef DLTabbarItemViewProtocol_h
#define DLTabbarItemViewProtocol_h

@protocol DLTabbarItemViewProtocol <NSObject>
- (void)setSelectionPercent:(CGFloat)percent;
@property(nonatomic, assign) BOOL selected;
@property(nonatomic, readonly) UIView *trackToView; //Tracker跟随/指向的view
@end

#endif /* DLTabbarItemViewProtocol_h */
