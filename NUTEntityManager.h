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

@end
