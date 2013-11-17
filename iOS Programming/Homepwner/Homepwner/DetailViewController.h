//
//  DetailViewController.h
//  Homepwner
//
//  Created by Adam Chamberlin on 16/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *serialNumberField;
@property (weak, nonatomic) IBOutlet UITextField *valueField;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (strong, nonatomic) BNRItem *item;

@end