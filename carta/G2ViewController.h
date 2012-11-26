//
//  G2ViewController.h
//  carta
//
//  Created by yaakov gamliel on 11/26/12.
//  Copyright (c) 2012 G2think.io. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface G2ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate,
                                                 UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldMap;  //hoew did we load tis one
    IBOutlet UITextField *locationField;
    
    
}
@end