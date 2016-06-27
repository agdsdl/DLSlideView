//
//  DLTabbarView.m
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/22.
//  Copyright © 2016年 dongle. All rights reserved.
//

#import "DLSlideBarView.h"

@interface DLSlideBarView()<UIScrollViewDelegate>
@end


@implementation DLSlideBarView
{
    UIImageView *trackView_;
    NSMutableArray *barItemArray_;
}

- (void)commonInit{
    _selectedIndex = -1;
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.scrollsToTop = NO;
    _scrollView.delegate = self;
    [self addSubview:_scrollView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [_scrollView addGestureRecognizer:tap];

//    trackView_ = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height-kTrackViewHeight, 0, kTrackViewHeight)];
//    [_scrollView addSubview:trackView_];
//    //    trackView_.layer.cornerRadius = 2.0f;
//
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (void)setBackgroundView:(UIView *)backgroundView{
    if (_backgroundView != backgroundView) {
        [_backgroundView removeFromSuperview];
        [self insertSubview:backgroundView atIndex:0];
        _backgroundView = backgroundView;
    }
}

//- (void)setTrackColor:(UIColor *)trackColor{
//    _trackColor = trackColor;
//    trackView_.backgroundColor = trackColor;
//}
//
//- (void)setTrackHeight:(CGFloat)trackHeight{
//    _trackHeight = trackHeight;
//    CGRect rc = trackView_.frame;
//    CGFloat originHeight = rc.size.height;
//    rc.size.height = trackHeight;
//    rc.origin.y -= trackHeight - originHeight;
//    trackView_.frame = rc;
//}
//
- (void)rebuildTabbar{
    
    for (UIView *view in barItemArray_) {
        [view removeFromSuperview];
    }
    [barItemArray_ removeAllObjects];
    
    float height = self.bounds.size.height-self.insets.top-self.insets.bottom;
    float x = self.insets.left;
    for (NSInteger i=0; i<self.barItemViewArray.count; i++) {
        UIView<DLSlideBarItemViewProtocol> *itemView = self.barItemViewArray[i];
        CGFloat width = itemView.bounds.size.width;
        itemView.frame = CGRectMake(x, self.insets.top, width, height);
        [_scrollView addSubview:itemView];
        x += width + self.itemSpaceX;
    }
    x -= self.itemSpaceX;
    x += self.insets.bottom;
    _scrollView.contentSize = CGSizeMake(x, height);
    
    // add tracker view.
    [self.trackerView addToSlideBar:self];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.backgroundView.frame = self.bounds;
}

- (NSInteger)tabbarCount{
    return [self.barItemViewArray count];
}

- (void)switchingFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex percent:(float)percent{
    NSLog(@"switchingFromIndex %ld, toIndex:%ld, percent:%f", fromIndex, toIndex, percent);
    UIView<DLSlideBarItemViewProtocol> *fromView = self.barItemViewArray[fromIndex];
    UIView<DLSlideBarItemViewProtocol> *toView = nil;
    if (toIndex >= 0 && toIndex < self.barItemViewArray.count) {
        toView = self.barItemViewArray[toIndex];
    }

    [fromView setSelectionPercent:1-percent];
    [toView setSelectionPercent:percent];
    [self.trackerView switchingFromIndex:fromIndex itemView:fromView toIndex:toIndex itemView:toView percent:percent];
}

- (void)setSelectedIndex:(NSInteger)selectedIndex{
    if (_selectedIndex >= 0) {
        UIView<DLSlideBarItemViewProtocol> *deselectedView = self.barItemViewArray[_selectedIndex];
        deselectedView.selected = NO;
    }
    if (selectedIndex >= 0) {
        UIView<DLSlideBarItemViewProtocol> *selectedView = self.barItemViewArray[selectedIndex];
        selectedView.selected = YES;
        
        //选中的居中显示
//        CGRect rc = selectedView.frame;
//        [_scrollView scrollRectToVisible:rc animated:YES];
        // 交给tracker处理
        
        // track view
        [self.trackerView selectAtIndex:selectedIndex itemView:selectedView];
    }

    _selectedIndex = selectedIndex;
    
}

- (void)tapAction:(UITapGestureRecognizer *)tap{
    NSInteger index = -1;
    CGPoint pt = [tap locationInView:_scrollView];
    for (NSInteger i=0; i<self.barItemViewArray.count; i++) {
        UIView<DLSlideBarItemViewProtocol> *itemView = self.barItemViewArray[i];
        if (CGRectContainsPoint(itemView.frame, pt)) {
            index = i;
            break;
        }
    }

    if (index >= 0) {
        self.selectedIndex = index;
        if (self.delegate) {
            [self.delegate DLSlideBar:self selectedAt:index];
        }
    }
}
#pragma mark scroll view delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
}



@end
