
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface G2MapPoint : NSObject <MKAnnotation>
{
  
}
+(id)mapPointTester;
-(id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;
@property (nonatomic,readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,readonly,copy) NSString *subtitle;
//@property (nonatomic,readonly) NSDate *dateCreated;
@end
