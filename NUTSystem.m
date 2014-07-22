//
//  NUTSystem.m
//  Creature
//
//  Created by Darren Tsung on 7/15/14.
//  Copyright (c) 2014 Lamdawoof. All rights reserved.
//

#import "NUTSystem.h"

@implementation NUTSystem
{
    
}

- (void)update:(CCTime)delta withEntityManager:(NUTEntityManager *)entities andEventManger:(NUTEventManger *)events
{
    [super doesNotRecognizeSelector:_cmd];
}

- (void)configureWithEventManager:(NUTEventManger *)eventManager
{
    // override NUTSystem here if you want to receive events!
}

- (NSString *)systemID
{
    return NUT_SYSTEM_BASE_ID;
}

+ (NSString *)systemID
{
    return NUT_SYSTEM_BASE_ID;
}

@end
