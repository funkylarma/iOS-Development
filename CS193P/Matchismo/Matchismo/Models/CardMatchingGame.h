//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Adam Chamberlin on 03/02/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject

#pragma mark Public properties
@property (readonly, nonatomic) int score;

// Designated initializer
- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
- (void)flipCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@end
