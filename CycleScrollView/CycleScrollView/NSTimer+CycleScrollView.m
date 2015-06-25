//
//  NSTimer+CycleScrollView.m
//  CycleScrollView
//
//  Created by lin wu on 6/25/15.
//  Copyright (c) 2015 lin wu. All rights reserved.
//

#import "NSTimer+CycleScrollView.h"

@implementation NSTimer (CycleScrollView)
-(void)pauseTimer {
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate distantFuture]];
}

-(void)resumeTimer {
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate date]];
}

- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval {
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:interval]];
}
@end
