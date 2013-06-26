//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Adam Chamberlin on 25/06/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title;

#pragma mark -
#pragma mark Memory Management

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}

@end
