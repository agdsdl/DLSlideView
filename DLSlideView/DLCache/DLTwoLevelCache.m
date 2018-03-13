//
//  DLTwoLevelCache.m
//  DLSlideViewDemo
//
//  Created by dongle on 12/3/18.
//  Copyright © 2018年 dongle. All rights reserved.
//

#import "DLTwoLevelCache.h"
#import "DLLRUCache.h"
#import <objc/NSObject.h>

@implementation DLTwoLevelCache{
    DLLRUCache *_vcCache;
    DLLRUCache *_dataCache;
}

- (id)initWithVCCacheSize:(NSInteger)vcSzie dataCacheSize:(NSInteger)dataSize{
    if (self = [super init]) {
        _vcCache = [[DLLRUCache alloc] initWithCount:vcSzie];
        _dataCache = [[DLLRUCache alloc] initWithCount:dataSize];
    }
    return self;
}

- (id<DLDataCachable>)objectForKey:(NSString *)key{
    return [_vcCache objectForKey:key];
}

- (void)setObject:(id<DLDataCachable>)object forKey:(NSString *)key{
    assert([object conformsToProtocol:@protocol(DLDataCachable)]);
    
    NSArray *oldkeyVc = [_vcCache setObject:object forKey:key];
    if (oldkeyVc) {
        NSString *oldKey = [oldkeyVc objectAtIndex:0];
        id<DLDataCachable> oldvc = [oldkeyVc objectAtIndex:1];
        id olddata = oldvc.DLCacheData;
        if (olddata) {
            [_dataCache setObject:olddata forKey:oldKey];
        }
    }
}

- (id)dataForKey:(NSString *)key{
    return [_dataCache objectForKey:key];
}

@end
