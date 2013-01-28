//
//  BirdSighting.m
//  BirdWatching
//
//  Created by Adam Chamberlin on 15/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting

- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    if (self) {
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    return nil;
}

@end
