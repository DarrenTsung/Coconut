//
//  NUTEntity.m
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTEntity.h"
#import "NUTSpriteComponent.h"

@implementation NUTEntity
{
    NSUInteger _id;
    NSMutableDictionary *_componentList;
}

- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    _componentList = [NSMutableDictionary dictionary];
	disabled = false;
    
    return self;
}

- (NSUInteger)getId
{
    return _id;
}

- (void)setId:(NSUInteger)newId
{
    _id = newId;
}

- (void)enable
{
	disabled = false;
	
	NSArray *children = [self children];
	for (NUTComponent *child in children)
	{
		[child enable];
	}
}

- (void)disable
{
	disabled = true;
	
	NSArray *children = [self children];
	for (NUTComponent *child in children)
	{
		[child disable];
	}
}

- (NUTComponent *)getComponent:(NSString *)componentID
{
    return [_componentList objectForKey:componentID];
}

- (void)attachComponent:(NUTComponent *)component
{
    // if component is a special NUTSpriteComponent, add it as a child of this entity
	// if you want to add another component as a child to the entity, you must do it manually (or edit this)
    if ([[component componentID] isEqualToString:NUT_COMPONENT_SPRITE_ID]) [self addChild:component];
    
    [_componentList setObject:component forKey:[component componentID]];
}


@end
