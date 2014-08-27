//
//  NUTScene.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCScene.h"
#import "NUTEventManager.h"
#import "NUTEntityManager.h"
#import "NUTSystemManager.h"

@interface NUTScene : CCScene
{
    @public
    NUTEventManager *events;
    NUTEntityManager *entities;
    NUTSystemManager *systems;
}

@end
