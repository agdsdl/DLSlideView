//
//  DLSlideTabbarProtocol.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLTabbarDelegate <NSObject>
- (void)DLTabbar:(id)sender selectedAt:(NSInteger)index;
@end

@protocol DLTabbarProtocol <NSObject>
@property(nonatomic, assign) NSInteger selectedIndex;
@property(nonatomic, readonly) NSInteger tabbarCount;
@property(nonatomic, weak) id<DLTabbarDelegate> delegate;
- (void)switchingFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex percent:(float)percent;

@end
