//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Adam Chamberlin on 19/06/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

@implementation WhereamiViewController

#pragma mark -
#pragma mark Memory Management

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        // Set the delegate
        [locationManager setDelegate:self];
        
        // And we want it to be as accurate as possible regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    }
    
    return self;
}

- (void)dealloc
{
    // Tell the location manager to stop sending us messages
    [locationManager setDelegate:nil];
}

- (void)viewDidLoad
{
    // Tell the map kit map to update
    [worldView setShowsUserLocation:YES];
}

#pragma mark -
#pragma mark CoreLocation Delegate Methods

-(void)locationManager:(CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
    
    // How many seconds  ago was the new location created?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    // CLLocationManagers will return the last found location of the device first,
    // you don't want that data in this case.
    // If this location was made more than 3 minutes ago, ignore it.
    if (t < -180) {
        // This cached data, you don't want it, keep looking
        return;
    }
    
    [self foundLocation:newLocation];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

#pragma mark -
#pragma mark MapKit Delegate Methods

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    // Get coordinates from the passed in userLocation object
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

#pragma mark -
#pragma mark UITextField Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    [textField resignFirstResponder];
    return YES;
}


#pragma mark -
#pragma mark Instance Methods

- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

- (void)foundLocation:(CLLocation *)loc
{
    // Create CLLocationCoordinate2D object from the passed in CLLocation object
    CLLocationCoordinate2D coord = [loc coordinate];
    
    // Create an instance of BNRMapPoint with current data
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate:coord title:[locationTitleField text]];
    
    // Add it to the map view
    [worldView addAnnotation:mp];
    
    // Zoom the region to this location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    
    // Reset the UI
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (IBAction)changeMap:(UISegmentedControl*)sender
{
    switch ([sender selectedSegmentIndex]) {
        case 0:
            [worldView setMapType:MKMapTypeStandard];
            break;
            
        case 1:
            [worldView setMapType:MKMapTypeSatellite];
            break;
        
        case 2:
            [worldView setMapType:MKMapTypeHybrid];
            break;
    }
}

@end