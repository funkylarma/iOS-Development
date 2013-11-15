//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Adam Chamberlin on 15/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    /**
     NSMutableArray that holds BNRItems
     */
    NSMutableArray *allItems;
}

#pragma mark - Class Method Declarations

+ (BNRItemStore *)sharedStore;

#pragma mark - Instance Methods

/**
 Returns the allItems NSMutableArray of BNRItems
 */
- (NSArray *)allItems;

/**
 Creates a new random BNRItem in the allItems NSMutableArray
 */
- (BNRItem *)createItem;

@end