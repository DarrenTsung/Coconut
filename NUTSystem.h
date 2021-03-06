//
//  NUTSystem.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"
#import "NUTEntityManager.h"
#import "NUTEventManager.h"

// create a new system ID when you subclass this class
#define NUT_SYSTEM_BASE_ID          @"NUT::SYSTEM::BASE"

@interface NUTSystem : CCNode
{
    
}

/**
 * All systems must override the [update:dt withEntityManager:entities andEventManger:events] method
 */
- (void)update:(CCTime)delta withEntityManager:(NUTEntityManager *)entities andEventManger:(NUTEventManager *)events;

/**
 * Register for events here
 */
- (void)configureWithEventManager:(NUTEventManager *)eventManager;

/**
 * Returns the system ID belonging to this system
 *
 * @return System ID of this system
 */
- (NSString *)systemID;

/**
 * Returns the system ID associated with this class
 *
 * @return System ID for the class
 */
+ (NSString *)systemID;

@end
