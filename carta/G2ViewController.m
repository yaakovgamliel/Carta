
#import "G2ViewController.h"
#import "G2MapPoint.h"
@implementation G2ViewController
//
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      //When using MKMapView we don't need all this!!
       locationManager = [[CLLocationManager alloc]init];
       [locationManager setDelegate:self];
       [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
       [locationManager setHeadingFilter:kCLHeadingFilterNone];
        
      //[locationManager startUpdatingLocation];
        
    }
    return self;
}
//
-(void)locationManager:(CLLocationManager *)manager
      didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"Wuuuopah just finished with Silver Chanllenge  %@!!!",newHeading);
}

-(void)locationManager:(CLLocationManager *)manager
             didUpdateToLocation:(CLLocation *)newLocation
             fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"comes form locationManager %@",newLocation);
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    if (t < -180) {
        return;
    }
    [self foundLocation:newLocation];
}
//
// */
-(void)locationManager:(CLLocationManager *)manager
    didFailWithError:(NSError *)error
{
    NSLog(@"We're getting any data!%@",error);
}
//
//
-(void)viewDidLoad
{
    [activityIndicator startAnimating];
    //bronze challengue
    [worldMap setMapType:MKMapTypeStandard];
    [worldMap setShowsUserLocation:YES];
}
//
//
-(void)mapView:(MKMapView *)mapView
didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    NSLog(@"steal need to write a description for the object %@",userLocation);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    //this give as the animation stuff, zooming the lacation in the map
    [worldMap setRegion:region animated:YES];
}
//
//MKAnnotation stuff
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    //this get the keyboard off
    [textField resignFirstResponder];
    return YES;
}
-(void)findLocation
{
   // [activityIndicator startAnimating];
    [locationManager startUpdatingLocation];
    [locationManager startUpdatingHeading];
    [locationField setHidden:NO];
}
-(void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    G2MapPoint *mp = [[G2MapPoint alloc]initWithCoordinate:coord
                                         title:[locationField text]];
    [worldMap addAnnotation:mp];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldMap setRegion:region animated:YES];
    
    ///clean up!!
    [locationField setText:@""];
    [locationField setHidden:NO];
    [locationManager stopUpdatingLocation];
    //debugging note
    NSLog(@"I'm at 97 on my code!");
    [activityIndicator stopAnimating];
    [activityIndicator setHidden:YES];
}
//set the buttons stuff
-(IBAction)setMaptype:(id)sender
{
    //this the let us access information about the sender this is
    //((UISegmentedControl *)sender) of this message
    switch (((UISegmentedControl *)sender).selectedSegmentIndex)
    {
        case 0:
        {
            [worldMap setMapType:MKMapTypeStandard];
            break;
        }
        case 1:
        {
            [worldMap setMapType:MKMapTypeHybrid];
            break;
        }
        default:
        {
            [worldMap setMapType:MKMapTypeSatellite];
            break;
        }
    }
    NSLog(@"just testing the buttons!");
    NSLog(@"%@",self);
}
@end
