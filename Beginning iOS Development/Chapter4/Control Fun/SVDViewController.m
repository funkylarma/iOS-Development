//
//  SVDViewController.m
//  Control Fun
//
//  Created by Adam Chamberlin on 27/10/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import "SVDViewController.h"

@interface SVDViewController ()

@end

@implementation SVDViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.sliderLabel.text = @"50";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender
{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(UISlider *)sender
{
    int progress = lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}

- (IBAction)switchChanged:(UISwitch *)sender
{
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(UISegmentedControl *)sender
{
    // 0 == switches index
    if (sender.selectedSegmentIndex == 0) {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    } else {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure"
                                                             delegate:self
                                                    cancelButtonTitle:@"No Way!"
                                               destructiveButtonTitle:@"Yes I'm Sure!"
                                                    otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString *msg = nil;
        if (self.nameField.text.length > 0) {
            msg = [NSString stringWithFormat:@"You can breathe easy, %@, everything went OK.", self.nameField.text];
        } else {
            msg = @"You can breathe easy, everything went OK.";
        }
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something was done"
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"Phew!"
                                              otherButtonTitles: nil];
        [alert show];
    }
}

@end