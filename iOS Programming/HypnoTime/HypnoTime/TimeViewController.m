//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Adam Chamberlin on 13/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (IBAction)showCurrentTime:(id)sender {
    
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}

@end
