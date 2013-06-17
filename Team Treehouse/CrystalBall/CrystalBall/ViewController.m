//
//  ViewController.m
//  CrystalBall
//
//  Created by Adam Chamberlin on 30/10/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Set up the background image
    UIImage *image = [UIImage imageNamed:@"background.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:self.imageView atIndex:0];
    
    // Set up the animation of the ball
    self.imageView.animationImages = [[NSArray alloc] initWithObjects:
                                      [UIImage imageNamed:@"cball00001"],
                                      [UIImage imageNamed:@"cball00002"],
                                      [UIImage imageNamed:@"cball00003"],
                                      [UIImage imageNamed:@"cball00004"],
                                      [UIImage imageNamed:@"cball00005"],
                                      [UIImage imageNamed:@"cball00006"],
                                      [UIImage imageNamed:@"cball00007"],
                                      [UIImage imageNamed:@"cball00008"],
                                      [UIImage imageNamed:@"cball00009"],
                                      [UIImage imageNamed:@"cball00010"],
                                      [UIImage imageNamed:@"cball00011"],
                                      [UIImage imageNamed:@"cball00012"],
                                      [UIImage imageNamed:@"cball00013"],
                                      [UIImage imageNamed:@"cball00013"],
                                      [UIImage imageNamed:@"cball00014"],
                                      [UIImage imageNamed:@"cball00015"],
                                      [UIImage imageNamed:@"cball00016"],
                                      [UIImage imageNamed:@"cball00017"],
                                      [UIImage imageNamed:@"cball00018"],
                                      [UIImage imageNamed:@"cball00019"],
                                      [UIImage imageNamed:@"cball00020"],
                                      [UIImage imageNamed:@"cball00021"],
                                      [UIImage imageNamed:@"cball00022"],
                                      [UIImage imageNamed:@"cball00023"],
                                      [UIImage imageNamed:@"cball00024"], nil];
    self.imageView.animationDuration = 1.0;
    self.imageView.animationRepeatCount = 1;
    
    // Initialise the array of predictions
    self.predictionArray = [[NSArray alloc] initWithObjects:
                                @"It is certain",
                                @"It is decidedly so",
                                @"All signs say YES",
                                @"The stars are not aligned",
                                @"My reply is no",
                                @"Better not tell you now",
                                @"Concentrate and ask again",
                                @"Unable to answer now", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)makePrediction
{
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    [self.imageView startAnimating];
    [UIView animateWithDuration:2.0 animations:^{
        self.predictionLabel.alpha = 1.0;
    }];
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"Motion Cancelled");
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediction];
}

@end