
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface G2ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate,
                                                 UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldMap;
    IBOutlet UITextField *locationField;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    
    
}
@property(nonatomic, getter=isHidden) BOOL hidden;
-(void)findLocation;
-(void)foundLocation:(CLLocation *)loc;
//small buttos 
-(IBAction)setMaptype:(id)sender;
@end
