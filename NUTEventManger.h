//
//  NUTEventManger.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"

@class NUTSystem;
#import "NUTEvent.h"

@interface NUTEventManger : CCNode
{
    
}

- (void)subscribeToEventType:(NSString *)eventID withCallback:(SEL)callback onDelegate:(NUTSystem *)delegate;

- (void)emit:(NUTEvent *)event;

@end
