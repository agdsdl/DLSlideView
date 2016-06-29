//
//  DLTitleBarItemView.m
//  DLSlideViewDemo
//
//  Created by 苏东乐 on 16/6/27.
//  Copyright © 2016年 dongle. All rights reserved.
//

#import "DLTitleBarItemView.h"
#import "DLUtility.h"

@implementation DLTitleBarItemConfiguration

@end

@implementation DLTitleBarItemView
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title configuration:(DLTitleBarItemConfiguration *)config
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
        label.text = title;
        label.font = config.itemNormalFont;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = config.itemNormalColor;
        [label sizeToFit];
        
        label.frame = CGRectMake((self.bounds.size.width-label.bounds.size.width)/2.0f, (self.bounds.size.height-label.bounds.size.height)/2.0f, CGRectGetWidth(label.bounds), CGRectGetHeight(label.bounds));
        label.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin|UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin;
        [self addSubview:label];
        _titleLabel = label;
        _config = config;
        _title = title;
        _width = frame.size.width;
    }
    return self;
}

- (void)setSelectionPercent:(CGFloat)percent{
    UIColor *color = [DLUtility getColorOfPercent:1-percent between:_config.itemNormalColor and:_config.itemSelectedColor];
    self.titleLabel.textColor = color;
}

- (void)setSelected:(BOOL)selected{
    _selected = selected;
    if (selected) {
        self.titleLabel.textColor = _config.itemSelectedColor;
    }
    else{
        self.titleLabel.textColor = _config.itemNormalColor;
    }
}

- (UIView *)trackOnView{
    return self.titleLabel;
}
@end
