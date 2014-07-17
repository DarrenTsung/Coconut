//
//  NUTSpriteComponent.h
//  Creature
//
//  Created by Darren Tsung on 7/16/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTComponent.h"
#import "CCSprite.h"

#define NUT_COMPONENT_SPRITE_ID             @"NUT::COMPONENT::SPRITE"

@interface NUTSpriteComponent : NUTComponent
{
    @public
        CCSprite *sprite;
}

- (id)initWithFilename:(NSString *)filename;

@end
