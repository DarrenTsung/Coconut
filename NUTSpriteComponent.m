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

- (NSString *)componentID
{
    return NUT_COMPONENT_SPRITE_ID;
}

+ (NSString *)componentID
{
    return NUT_COMPONENT_SPRITE_ID;
}

@end
