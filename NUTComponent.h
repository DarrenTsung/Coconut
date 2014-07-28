//
//  NUTComponent.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"

// create a new component ID when you subclass this class
#define NUT_COMPONENT_BASE_ID       @"NUT::COMPONENT::BASE"

@interface NUTComponent : CCNode
{
    
}

- (void)enable;

- (void)disable;

/**
 * Returns the component ID belonging to this component
 *
 * @return Component ID of this component
 */
- (NSString *)componentID;

/**
 * Returns the component ID associated with this class
 *
 * @return Component ID for the class
 */
+ (NSString *)componentID;

@end
