//
//  PageNViewController.h
//  DLSlideViewDemo
//
//  Created by Dongle Su on 15-2-13.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLTwoLevelCache.h"

@interface PageNViewController : UIViewController<DLDataCachable>

@property (weak, nonatomic) IBOutlet UILabel *pageLabel;

- (id)DLCacheData;
- (void)setDLCacheData:(id)cacheData;

@end
