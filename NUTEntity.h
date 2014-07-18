//
//  NUTEntity.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"
#import "NUTComponent.h"

/**
 * An NUTEntity has a unique id and a list of components.
 */
@interface NUTEntity : CCNode
{
}

/**
 * Get this entity's id
 *
 * @return A unique id for this entity. Id's are reused, so be careful about saving entity ids.
 */
- (NSUInteger)getId;

/**
 * Set this entity's id
 */
- (void)setId:(NSUInteger)newId;


/**
 * Get a component belonging to this entity.
 *
 * @param componentID Unique component tag defined in the component header
 * @return A pointer to that component if it exists or nil
 */
- (NUTComponent *)getComponent:(NSString *)componentID;

/**
 * Attach the component to this entity
 *
 * @param component Component to attach
 */
- (void)attachComponent:(NUTComponent *)component;

@end