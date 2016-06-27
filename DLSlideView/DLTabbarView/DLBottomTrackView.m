//
//  DLBottomTrackView.m
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/25.
//  Copyright © 2016年 dongle. All rights reserved.
//

#import "DLSlideBarView.h"
#import "DLBottomTrackView.h"
#import "DLSlideBarItemViewProtocol.h"

@implementation DLBottomTrackView
- (void)addToSlideBar:(DLSlideBarView *)slidebar{
    self.frame = CGRectMake(0, slidebar.scrollView.bounds.size.height - self.bottomPadding - self.bounds.size.height, self.bounds.size.width, self.bounds.size.height);
    [slidebar.scrollView addSubview:self];
    self.basedSlidebarView = slidebar;
}

- (void)selectAtIndex:(NSInteger)index itemView:(UIView<DLSlideBarItemViewProtocol> *)itemView{
    CGRect rc = itemView.frame;
    //选中的居中显示
    rc = CGRectMake(CGRectGetMidX(rc) - self.basedSlidebarView.scrollView.bounds.size.width/2.0f, rc.origin.y, self.basedSlidebarView.scrollView.bounds.size.width, rc.size.height);
    // 滚动左右两格到可见位置
    //            if (selectedIndex > 0) {
    //                UIView *leftView = [scrollView_ viewWithTag:kViewTagBase+selectedIndex-1];
    //                rc = CGRectUnion(rc, leftView.frame);
    //            }
    //            if (selectedIndex < [self tabbarCount]-1) {
    //                UIView *rightView = [scrollView_ viewWithTag:kViewTagBase+selectedIndex+1];
    //                rc = CGRectUnion(rc, rightView.frame);
    //            }
    [self.basedSlidebarView.scrollView scrollRectToVisible:rc animated:YES];
    
    // track view
    CGRect trackRc = [self.basedSlidebarView.scrollView convertRect:itemView.trackOnView.bounds fromView:itemView.trackOnView];
    self.frame = CGRectMake(trackRc.origin.x + self.leftPadding , self.frame.origin.y, trackRc.size.width - self.leftPadding-self.rightPadding, CGRectGetHeight(self.bounds));
}

- (void)switchingFromIndex:(NSInteger)fromIndex itemView:(UIView<DLSlideBarItemViewProtocol> *)fromView toIndex:(NSInteger)toIndex itemView:(UIView<DLSlideBarItemViewProtocol> *)toView percent:(float)percent{

    // 计算track view位置和宽度
    CGRect fromRc = [self.basedSlidebarView.scrollView convertRect:fromView.trackOnView.bounds fromView:fromView.trackOnView];
    CGFloat fromWidth = fromView.trackOnView.frame.size.width - self.leftPadding - self.rightPadding;
    CGFloat fromX = fromRc.origin.x + self.leftPadding;
    CGFloat toX;
    CGFloat toWidth;
    if (toView) {
        CGRect toRc = [self.basedSlidebarView.scrollView convertRect:toView.trackOnView.bounds fromView:toView.trackOnView];
        toWidth = toRc.size.width - self.leftPadding - self.rightPadding;
        toX = toRc.origin.x + self.leftPadding;
    }
    else{
        toWidth = fromWidth;
        if (toIndex > fromIndex) {
            toX = fromX + fromWidth;
        }
        else{
            toX = fromX - fromWidth;
        }
    }
    
    CGFloat width = toWidth * percent + fromWidth*(1-percent);
    CGFloat x = fromX + (toX - fromX)*percent;
    self.frame = CGRectMake(x, self.frame.origin.y, width, CGRectGetHeight(self.bounds));
}

@end
