//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Adam Chamberlin on 15/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

#pragma mark - Class Method Declarations

+ (BNRItemStore *)sharedStore {
    static BNRItemStore *sharedStored = nil;
    if (!sharedStored) {
        sharedStored = [[super allocWithZone:nil] init];
    }
    
    return sharedStored;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedStore];
}

#pragma mark - Initialisation

- (id)init {
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - Instance Methods

- (NSArray *)allItems {
    return allItems;
}

- (BNRItem *)createItem {
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    return p;
}

@end