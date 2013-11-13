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

#pragma mark - Initializer

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    // Call the superclass designated initaliser
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        // Give it a label
        [tbi setTitle:@"Hypnosis"];
        
        // Give it an image
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
    }
    return self;
}

#pragma mark - View Life Cycle

- (void)loadView {
    
    // Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *view = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    [self setView:view];
}

- (void)viewDidLoad {
    
    // Call the super class
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController loaded its view");
}

@end