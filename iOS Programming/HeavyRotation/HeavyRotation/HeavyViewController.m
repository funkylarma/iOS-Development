//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Adam Chamberlin on 13/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "HeavyViewController.h"

@interface HeavyViewController ()

@end

@implementation HeavyViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x {
    // Return YES if incoming orientation is Portrait or either of the Landscapes, otherwise return NO
    return (x == UIInterfaceOrientationPortrait) || UIInterfaceOrientationIsLandscape(x);
}

@end