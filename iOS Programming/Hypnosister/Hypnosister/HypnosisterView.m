//
//  HypnosisterView.m
//  Hypnosister
//
//  Created by Adam Chamberlin on 11/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "HypnosisterView.h"

@implementation HypnosisterView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // All HynposisViews start with a clear background
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColour:[UIColor lightGrayColor]];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    // Figure the centre of the bounds rectangle
    CGPoint centre;
    centre.x = bounds.origin.x + bounds.size.width / 2.0;
    centre.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The radius of the circle should be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    // The thickness of the line should be 10 points wide
    CGContextSetLineWidth(ctx, 10);
    
    // The colour of the line should be grey
    [[self circleColour] setStroke];
    
    // Draw concentric circles from the outside in
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        // Add a path to the context
        CGContextAddArc(ctx, centre.x, centre.y, currentRadius, 0.0, M_PI * 2.0, YES);
        
        // Perform drawing instruction; remove path
        CGContextStrokePath(ctx);
    }
    
    // Create a string
    NSString *text = @"You are getting sleepy";
    
    // Get a font to draw it in
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    
    // How big is this string when drawn in this font
    textRect.size = [text sizeWithAttributes:@{NSFontAttributeName:font}];
    
    // Lets put that string in the center of the view
    textRect.origin.x = centre.x - textRect.size.width / 2.0;
    textRect.origin.y = centre.y - textRect.size.height / 2.0;
    
    // Set the fill colour of the current context
    [[UIColor blackColor] setFill];
    
    // Draw the string
    [text drawInRect:textRect withAttributes:@{NSFontAttributeName:font}];
    
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        NSLog(@"Device started shaking");
        [self setCircleColour:[UIColor redColor]];
    }
}

- (void)setCircleColour:(UIColor *)circleColour {
    _circleColour = circleColour;
    [self setNeedsDisplay];
}

@end