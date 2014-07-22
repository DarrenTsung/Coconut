//
//  NUTEvent.h
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "CCNode.h"

#define NUT_EVENT_BASE_ID               @"NUT::EVENT::BASE"

@interface NUTEvent : CCNode

/**
 * Returns the event ID belonging to this event
 *
 * @return Event ID of this event
 */
- (NSString *)eventID;

/**
 * Returns the event ID associated with this class
 *
 * @return Event ID for the class
 */
+ (NSString *)eventID;

@end
