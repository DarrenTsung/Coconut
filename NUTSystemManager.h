//
//  NUTSystemManager.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"
#import "NUTSystem.h"

@interface NUTSystemManager : CCNode
{
    
}

/**
 * Add a system to be managed in the system manager.
 * 
 * @param system System to be added to system manager
 */
- (void)add:(NUTSystem *)system;

/**
 * Update a specific system with delta
 */
- (void)updateSystem:(NSString *)systemID withDelta:(CCTime)delta;

/**
 * Store references to event manager and entity manager
 */
- (void)configureWithEntityM:(NUTEntityManager *)entitym andEventM:(NUTEventManager *)eventm;

/**
 * Finish configuring the systems added to the systems manager
 */
- (void)finishConfiguration;

@end
