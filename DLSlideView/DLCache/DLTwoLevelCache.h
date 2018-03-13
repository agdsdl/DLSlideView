//
//  DLTwoLevelCache.h
//  DLSlideViewDemo
//
//  Created by dongle on 12/3/18.
//  Copyright © 2018年 dongle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLCacheProtocol.h"

@protocol DLDataCachable<NSObject>
- (id)DLCacheData;
- (void)setDLCacheData:(id)cacheData;
@end

/**
 二级缓存，第一级缓存viewcontroller，第二级缓存数据。
 先从第一级缓存取VC，取不到就去二级取数据，然后用数据初始化一个新VC。
 一般数据缓存的成本较小，这种方法可以兼顾内存使用和加载速度。
 */
@interface DLTwoLevelCache : NSObject<DLTwoLevelCacheProtocol>
- (id)initWithVCCacheSize:(NSInteger)vcSzie dataCacheSize:(NSInteger)dataSize;

- (id<DLDataCachable>)objectForKey:(NSString *)key;
- (void)setObject:(id<DLDataCachable>)object forKey:(NSString *)key;

- (id)dataForKey:(NSString *)key;

@end
