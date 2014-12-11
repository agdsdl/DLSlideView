//
//  DLTabedSlideView.m
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "DLTabedSlideView.h"
#import "DLSlideView.h"

@interface DLTabedSlideView()<DLSlideViewDelegate>

@end

@implementation DLTabedSlideView{
    DLSlideView *slideView_;
}

- (void)commonInit{
    slideView_ = [[DLSlideView alloc] initWithFrame:CGRectZero];
    slideView_.delegate = self;
    [self addSubview:slideView_];
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

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self layoutBarAndSlide];
}

- (void)layoutBarAndSlide{
//    UIView *barView = (UIView *)_tabarView;
//    barView.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(barView.bounds));
    slideView_.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds));

}
- (void)setViewControllers:(NSArray *)viewControllers{
    //assert(self.tabarView == nil || viewControllers.count == [self.tabarView tabbarCount]);

    slideView_.viewControllers = viewControllers;
}

- (void)setBaseViewController:(UIViewController *)baseViewController{
    slideView_.baseViewController = baseViewController;
}

- (void)setTabarView:(id<DLSlideTabbarProtocol>)tabarView{
    assert([tabarView isKindOfClass:[UIView class]]);
    assert(slideView_.viewControllers == nil || slideView_.viewControllers.count == [tabarView tabbarCount]);
    
    if (_tabarView != tabarView) {
        _tabarView.delegate = nil;
        _tabarView = tabarView;
        
        tabarView.delegate = self;
        [self layoutBarAndSlide];

    }
}

- (void)setSelectedIndex:(int)selectedIndex{
    _selectedIndex = selectedIndex;
    [slideView_ setSelectedIndex:selectedIndex];
    [self.tabarView setSelectedIndex:selectedIndex];
}

- (void)DLSlideTabbar:(id)sender selectAt:(int)index{
    [slideView_ setSelectedIndex:index];
}

- (void)DLSlideView:(DLSlideView *)slide switchingFrom:(int)oldIndex to:(int)toIndex percent:(float)percent{
    [self.tabarView switchingFrom:oldIndex to:toIndex percent:percent];
}
- (void)DLSlideView:(DLSlideView *)slide didSwitchTo:(int)index{
    [self.tabarView setSelectedIndex:index];
}
- (void)DLSlideView:(DLSlideView *)slide switchCanceled:(int)oldIndex{
    [self.tabarView setSelectedIndex:oldIndex];
}


@end
