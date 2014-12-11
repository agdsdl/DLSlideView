//
//  DLSlideTabbarProtocol.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLSlideTabbarDelegate <NSObject>
- (void)DLSlideTabbar:(id)sender selectAt:(int)index;
@end

@protocol DLSlideTabbarProtocol <NSObject>
@property(nonatomic, assign) int selectedIndex;
@property(nonatomic, readonly) int tabbarCount;
@property(nonatomic, weak) id<DLSlideTabbarDelegate> delegate;
- (void)switchingFrom:(int)fromIndex to:(int)toIndex percent:(float)percent;

@end
