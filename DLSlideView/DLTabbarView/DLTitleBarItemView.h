//
//  DLTitleBarItemView.h
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/27.
//  Copyright © 2016年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLSlideBarItemViewProtocol.h"

@interface DLTitleBarItemConfiguration : NSObject
@property (nonatomic, strong) UIColor *itemNormalColor;
@property (nonatomic, strong) UIColor *itemSelectedColor;
@property (nonatomic, strong) UIFont *itemNormalFont;
@property (nonatomic, assign) CGFloat *itemSelectedFontScale;
@end

@interface DLTitleBarItemView : UIView <DLSlideBarItemViewProtocol>
@property(nonatomic, strong) NSString *title;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, strong) DLTitleBarItemConfiguration *config;
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title configuration:(DLTitleBarItemConfiguration *)config;

@property(nonatomic, strong) UILabel *titleLabel;

//DLSlideBarItemViewProtocol
- (void)setSelectionPercent:(CGFloat)percent;
@property(nonatomic, assign) BOOL selected;

@end
