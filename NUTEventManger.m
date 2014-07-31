//
//  NUTEventManger.m
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTEventManger.h"
#import "NUTSystem.h"

@implementation NUTEventManger
{
    NSMutableDictionary *_delegatesAndCallbacksForEvents;
}

- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    _delegatesAndCallbacksForEvents = [NSMutableDictionary dictionary];
    
    return self;
}

- (void)subscribeToEventType:(NSString *)eventID withCallback:(SEL)callback onDelegate:(id)delegate
{
    NSMutableArray *delegatesAndCallbacks = [_delegatesAndCallbacksForEvents objectForKey:eventID];
    
    if (delegatesAndCallbacks == nil)
    {
        delegatesAndCallbacks = [NSMutableArray array];
        [_delegatesAndCallbacksForEvents setObject:delegatesAndCallbacks forKey:eventID];
    }
    
    NSArray *delegateAndCallback = @[delegate, [NSValue valueWithPointer:callback]];
    [delegatesAndCallbacks addObject:delegateAndCallback];
}

- (void)emit:(NUTEvent *)event
{
    NSString *eventID = [event eventID];
    NSArray *delegatesAndCallbacks = [_delegatesAndCallbacksForEvents objectForKey:eventID];
    for (NSArray *delegateAndCallback in delegatesAndCallbacks)
    {
        id delegate = [delegateAndCallback objectAtIndex:0];
        SEL callback = [[delegateAndCallback objectAtIndex:1] pointerValue];
        
        [delegate performSelector:callback withObject:event];
    }
}


@end
