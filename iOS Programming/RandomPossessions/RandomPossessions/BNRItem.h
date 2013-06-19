//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Adam Chamberlin on 18/06/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

#pragma mark -
#pragma mark Class Method Declarations

+ (id)randomItem;

#pragma mark -
#pragma mark Instance Method Declarations

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

- (id)initWithItemName:(NSString *)name
          serialNumber:(NSString *)sNumber;

@end