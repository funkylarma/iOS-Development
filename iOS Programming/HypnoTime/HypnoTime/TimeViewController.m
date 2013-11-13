//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Adam Chamberlin on 13/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

#pragma mark - Initialiser

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    // Call the superclass designated initialiser
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        // Give it a title
        [tbi setTitle:@"Time"];
        
        // Give it an image
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        [tbi setImage:i];
    }
    return self;
}

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    
    // Call the super class
    [super viewDidLoad];
    
    NSLog(@"TimeViewController loaded its view");
    
    [[self view] setBackgroundColor:[UIColor greenColor]];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"CurrentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"CurrentTimeViewController will disappear");
    [super viewWillDisappear:animated];
}

#pragma mark - IBActions

- (IBAction)showCurrentTime:(id)sender {
    
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}

@end
