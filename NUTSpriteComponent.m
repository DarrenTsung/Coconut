//
//  NUTSpriteComponent.m
//  Creature
//
//  Created by Darren Tsung on 7/16/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTSpriteComponent.h"

@implementation NUTSpriteComponent

- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    sprite = [CCSprite emptySprite];
	disabled = false;
    [self addChild:sprite];
    
    return self;
}

- (id)initWithFilename:(NSString *)filename
{
    self = [super init];
    if (!self) return nil;
    
    sprite = [CCSprite spriteWithImageNamed:filename];
    [self addChild:sprite];
    
    return self;
}

- (void)disable
{
    if ([[self children] containsObject:sprite])
    {
    	[self removeChild:sprite];
    }
}

- (void)enable
{
    if (![[self children] containsObject:sprite])
    {
    	[self addChild:sprite];
    }
}

- (NSString *)componentID
{
    return NUT_COMPONENT_SPRITE_ID;
}

+ (NSString *)componentID
{
    return NUT_COMPONENT_SPRITE_ID;
}

@end
