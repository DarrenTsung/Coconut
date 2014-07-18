//
//  NUTSystemManager.m
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTSystemManager.h"

@implementation NUTSystemManager
{
    NSMutableDictionary *_systems;
    NUTEntityManager *_entitym;
    NUTEventManger *_eventm;
}

- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    _systems = [NSMutableDictionary dictionary];
    
    return self;
}

- (void)add:(NUTSystem *)system
{
    [_systems setObject:system forKey:[system systemID]];
}

- (void)configureWithEntityM:(NUTEntityManager *)entitym andEventM:(NUTEventManger *)eventm
{
    if (!entitym || !eventm)
    { }   // LOG MISSING MANAGERS HERE
        
        
    _entitym = entitym;
    _eventm = eventm;
}

- (void)updateSystem:(NSString *)systemID withDelta:(CCTime)delta
{
    NUTSystem *system = [_systems objectForKey:systemID];
    
    if (!system)
    {
        // LOG MISSING SYSTEM HERE
    }
    else
    {
        [system update:delta withEntityManager:_entitym andEventManger:_eventm];
    }
}

@end