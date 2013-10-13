//
//  SVDViewController.h
//  Button Fun
//
//  Created by Adam Chamberlin on 10/10/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVDViewController : UIViewController

- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end
