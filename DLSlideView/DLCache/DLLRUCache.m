//
//  DLFIFOCache.m
//  DLSlideViewDemo
//
//  Created by Dongle Su on 14-12-13.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "DLLRUCache.h"

@implementation DLLRUCache{
    NSMutableDictionary *dic_;
    NSMutableArray *lruKeyList_;
    NSInteger capacity_;
}

- (id)initWithCount:(NSInteger)count{
    if (self = [super init]) {
        capacity_ = count;
        dic_ = [NSMutableDictionary dictionary];
        lruKeyList_ = [NSMutableArray array];
    }

    return self;
}

- (NSArray *)setObject:(id)object forKey:(NSString *)key{
    id oldOne;
    NSString *oldKey;
    if (![lruKeyList_ containsObject:key]) {
        if (lruKeyList_.count < capacity_) {
            [dic_ setValue:object forKey:key];
            [lruKeyList_ addObject:key];
        }
        else{
            NSString *longTimeUnusedKey = [lruKeyList_ firstObject];
            oldOne = [dic_ objectForKey:longTimeUnusedKey];
            oldKey = longTimeUnusedKey;
            [dic_ setValue:nil forKey:longTimeUnusedKey];
            [lruKeyList_ removeObjectAtIndex:0];
            
            [dic_ setValue:object forKey:key];
            [lruKeyList_ addObject:key];
        }
    }
    else{
        [dic_ setValue:object forKey:key];
        [lruKeyList_ removeObject:key];
        [lruKeyList_ addObject:key];
    }
    return oldOne?@[oldKey,oldOne]:nil;
}

- (id)objectForKey:(NSString *)key{
    if ([lruKeyList_ containsObject:key]) {
        [lruKeyList_ removeObject:key];
        [lruKeyList_ addObject:key];
        
        return [dic_ objectForKey:key];
    }
    else{
        return nil;
    }
}
@end
