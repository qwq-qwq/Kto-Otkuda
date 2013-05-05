//
//  NSArray+MutableDeepCopy.m
//  Simple Table
//
//  Created by km on 15.12.12.
//  Copyright (c) 2012 Dave Mark. All rights reserved.
//

#import "NSArray+MutableDeepCopy.h"

@implementation NSArray (MutableDeepCopy)

- (NSMutableArray *)mutableDeepCopy {
        id oneValue = self;
        id oneCopy = nil;
        oneCopy = [oneValue mutableCopy];
    return oneCopy;
}
@end
