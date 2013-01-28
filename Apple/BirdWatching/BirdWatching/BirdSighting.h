//
//  BirdSighting.h
//  BirdWatching
//
//  Created by Adam Chamberlin on 15/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BirdSighting : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;

@end
