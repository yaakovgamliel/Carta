//
//  G2MapPoint.h
//  carta
//
//  Created by yaakov gamliel on 11/26/12.
//  Copyright (c) 2012 G2think.io. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface G2MapPoint : NSObject <MKAnnotation>
{    
}
-(id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;
@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@end
