//
//  ViewController.h
//  CrystalBall
//
//  Created by Adam Chamberlin on 30/10/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Property declarations
@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) UIImageView *imageView;

@end