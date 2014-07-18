//
//  NUTEntityManager.m
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTEntityManager.h"

#define MAX_ENTITY_IDS      10000.0

@implementation NUTEntityManager
{
    NSMutableSet *_idPool;
}

- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    _idPool = [NSMutableSet set];
    
    return self;
}

- (NUTEntity *)createEntity
{
    NUTEntity *newEntity = [NUTEntity node];
    
    NSUInteger unusedId = [self getUnusedId];
    // if there was an error in getting an id, return nil
    if (unusedId == 0) return nil;
    
    [newEntity setId:unusedId];
    
    [self addChild:newEntity];
    
    return newEntity;
}

- (NSUInteger)getUnusedId
{
    // simple iteration over all the possible ids
    for (int i=1; i<=MAX_ENTITY_IDS; i++)
    {
        if (![_idPool containsObject:@(i)])
        {
            [_idPool addObject:@(i)];
            return i;
        }
    }
    return 0;
}

- (NSArray *)entitiesWithComponents:(NSString *)firstComponentID, ...
{
    // process the variable number of componentIDs + add them to a mutable array
    NSMutableArray *componentIdList = [NSMutableArray array];
    va_list args;
    va_start(args, firstComponentID);
    for (NSString *arg = firstComponentID; arg != nil; arg = va_arg(args, NSString*))
    {
        [componentIdList addObject:arg];
    }
    va_end(args);
    
    NSUInteger componentsSize = [componentIdList count];
    NSMutableArray *entityList = [NSMutableArray array];
    
    for (NUTEntity *entity in [self children])
    {
        bool matches = true;
        
        for (int i=0; i<componentsSize; i++)
            if (![entity getComponent:[componentIdList objectAtIndex:i]]) matches = false;
        
        if (matches)
            [entityList addObject:entity];
    }
    
    return entityList;
}

@end
