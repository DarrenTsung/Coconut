//
//  NUTScene.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCScene.h"
#import "NUTEventManger.h"
#import "NUTEntityManager.h"
#import "NUTSystemManager.h"

@interface NUTScene : CCScene
{
    @public
    NUTEventManger *events;
    NUTEntityManager *entities;
    NUTSystemManager *systems;
}

@end
