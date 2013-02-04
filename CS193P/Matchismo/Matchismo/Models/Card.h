//
//  Card.h
//  Matchismo
//
//  Created by Adam Chamberlin on 29/01/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;

@end
