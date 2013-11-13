//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Adam Chamberlin on 13/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView {
    
    // Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *view = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    [self setView:view];
}

@end