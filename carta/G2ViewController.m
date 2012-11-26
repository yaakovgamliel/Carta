//
//  G2ViewController.m
//  carta
//
//  Created by yaakov gamliel on 11/26/12.
//  Copyright (c) 2012 G2think.io. All rights reserved.
//

#import "G2ViewController.h"
#import "G2MapPoint.h"
@implementation G2ViewController
//
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      //  locationManager = [[CLLocationManager alloc]init];
      //  [locationManager setDelegate:self];
      //  [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //[locationManager startUpdatingLocation];
        
    }
    return self;
}
//
/*
//
-(void)locationManager:(CLLocationManager *)manager
             didUpdateToLocation:(CLLocation *)newLocation
             fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@",newLocation);
}
//
//
-(void)locationManager:(CLLocationManager *)manager
    didFailWithError:(NSError *)error
{
    NSLog(@"%@",error);
}   */
//
//
-(void)viewDidLoad
{
    [worldMap setShowsUserLocation:YES];
}
//
//
-(void)mapView:(MKMapView *)mapView
didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    NSLog(@"%@",userLocation);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    //this give as the animation stuff, zooming the lacation in the map
    [worldMap setRegion:region animated:YES];
}
//
//MKAnnotation stuff
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    [textField resignFirstResponder];
    return YES;
}
@end
