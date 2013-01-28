//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by Adam Chamberlin on 15/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdSighting.h"

@interface BirdSightingDataController ()

- (void)initializeDefaultDataList;

@end

@implementation BirdSightingDataController

- (void)initializeDefaultDataList
{
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterBirdSightingList = sightingList;
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    sighting = [[BirdSighting alloc] initWithName:@"Pidgeon" location:@"Everywhere" date:today];
    [self addBirdSightingWithSighting:sighting];
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList
{
    if (_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}

- (id)init
{
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (NSUInteger)countOfList
{
    return [self.masterBirdSightingList count];
}

- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex
{
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}

- (void)addBirdSightingWithSighting:(BirdSighting *)sighting
{
    [self.masterBirdSightingList addObject:sighting];
}

@end