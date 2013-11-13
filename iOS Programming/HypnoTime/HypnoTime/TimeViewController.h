//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Adam Chamberlin on 13/11/2013.
//  Copyright (c) 2013 Adam Chamberlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController {
    __weak IBOutlet UILabel *timeLabel;
}

- (IBAction)showCurrentTime:(id)sender;

@end