//
//  NUTEntityManager.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"
#import "NUTEntity.h"

@interface NUTEntityManager : CCNode
{
    
}

/**
 * Creates a entity
 *
 * @return A newly created entity
 */
- (NUTEntity *)createEntity;

/**
 * Returns all entities which have all of the components listed in the arguments
 * 
 * @param Components Variable number of component ids, terminated with nil
 * @return List of entities which have all components inputted
 */
- (NSArray *)entitiesWithComponents:(NSString *)firstComponentID, ...
    NS_REQUIRES_NIL_TERMINATION;

/**
 * Returns all entities which have name equal to the name inputted. Name is a part of CCNode
 *
 * @param Name The name of the entity you are searching for
 * @return An array of such entities
 */
- (NSArray *)entitiesWithName:(NSString *)name;

/**
 * Returns first entity which has a name equal to the name inputted.
 *
 * @param Name The name of the entity you are searching for
 * @return The first entity matching the name specified
 */
- (NUTEntity *)entityWithName:(NSString *)name;

@end
