//
//  DLFIFOCache.m
//  DLSlideViewDemo
//
//  Created by Dongle Su on 14-12-13.
//  Copyright (c) 2014年 dongle. All rights reserved.
//

#import "DLFIFOCache.h"

@implementation DLFIFOCache{
    NSMutableDictionary *dic_;
    NSMutableArray *fifoKeyList_;
    int capacity_;
}

- (id)initWithCount:(int)count{
    if (self = [super init]) {
        capacity_ = count;
        dic_ = [NSMutableDictionary dictionaryWithCapacity:capacity_];
        fifoKeyList_ = [NSMutableArray arrayWithCapacity:capacity_];
    }

    return self;
}

- (void)setObject:(id)object forKey:(NSString *)key{
    if (![fifoKeyList_ containsObject:key]) {
        if (fifoKeyList_.count < capacity_) {
            [dic_ setValue:object forKey:key];
            [fifoKeyList_ addObject:key];
        }
        else{
            NSString *longTimeUnusedKey = [fifoKeyList_ firstObject];
            [dic_ setValue:nil forKey:longTimeUnusedKey];
            [fifoKeyList_ removeObjectAtIndex:0];
            
            [dic_ setValue:object forKey:key];
            [fifoKeyList_ addObject:key];
        }
    }
    else{
        [dic_ setValue:object forKey:key];
        [fifoKeyList_ removeObject:key];
        [fifoKeyList_ addObject:key];
    }
}

- (id)objectForKey:(NSString *)key{
    if ([fifoKeyList_ containsObject:key]) {
        [fifoKeyList_ removeObject:key];
        [fifoKeyList_ addObject:key];
        
        return [dic_ objectForKey:key];
    }
    else{
        return nil;
    }
}
@end
