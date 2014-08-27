//
//  NUTScene.m
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTScene.h"

@implementation NUTScene

- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    systems = [[NUTSystemManager alloc] init];
    [self addChild:systems];
    
    events = [[NUTEventManager alloc] init];
    [self addChild:events];
    
    entities = [[NUTEntityManager alloc] init];
    [self addChild:entities];
    
    [systems configureWithEntityM:entities andEventM:events];
    
    return self;
}

@end
