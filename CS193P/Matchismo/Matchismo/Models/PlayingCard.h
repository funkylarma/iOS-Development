//
//  PlayingCard.h
//  Matchismo
//
//  Created by Adam Chamberlin on 29/01/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
