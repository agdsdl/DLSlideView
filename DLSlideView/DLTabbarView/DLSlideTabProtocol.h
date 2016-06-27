//
//  DLSlideTabbarProtocol.h
//  DLSlideController
//
//  Created by Dongle Su on 14-12-8.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLSlideBarDelegate <NSObject>
- (void)DLSlideBar:(id)sender selectedAt:(NSInteger)index;
@end

@protocol DLSlideBarProtocol <NSObject>
@property(nonatomic, assign) NSInteger selectedIndex;
@property(nonatomic, readonly) NSInteger tabbarCount;
@property(nonatomic, weak) id<DLSlideBarDelegate> delegate;
- (void)switchingFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex percent:(float)percent;

@end
