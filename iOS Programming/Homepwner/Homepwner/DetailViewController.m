//
//  DetailViewController.m
//  Homepwner
//
//  Created by Adam Chamberlin on 16/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "DetailViewController.h"
#import "BNRItem.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[self nameField] setText:[[self item] itemName]];
    [[self serialNumberField] setText:[[ self item] serialNumber]];
    [[self valueField] setText:[NSString stringWithFormat:@"%d", [[self item] valueInDollars]]];
    
    // Create a NSDateFormatter that will turn a date into a single date string
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    // Use filtered NSDate object to set dateLabel contents
    [[self dateLabel] setText:[dateFormatter stringFromDate:[[self item] dateCreated]]];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    // Clear first responder
    [[self view] endEditing:YES];
    
    // Save changes to item
    [[self item] setItemName:[[self nameField] text]];
    [[self item] setSerialNumber:[[self serialNumberField] text]];
    [[self item] setValueInDollars:[[[self valueField] text] intValue]];
}

@end