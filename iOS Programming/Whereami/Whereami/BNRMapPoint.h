//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Adam Chamberlin on 25/06/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;

// A new disgnated initaliser for instances of BNRMapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;


@end
