//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Adam Chamberlin on 19/06/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
    IBOutlet UISegmentedControl *mapSelector;
}

- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;

@end