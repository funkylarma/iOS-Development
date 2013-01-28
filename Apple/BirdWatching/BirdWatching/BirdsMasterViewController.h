//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Adam Chamberlin on 15/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (nonatomic, strong) BirdSightingDataController *dataController;

@end
