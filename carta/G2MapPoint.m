
#import "G2MapPoint.h"

@implementation G2MapPoint
//@synthesize dateCreated;
@synthesize coordinate;
@synthesize subtitle;
//this one work before th @synthe thingi
@synthesize title;
-(id)initWithCoordinate:(CLLocationCoordinate2D)c
                  title:(NSString *)t 
{
    self = [super init];
    if (self) {
        coordinate = c;//hre we probabily are going to use CLL....Make to
        [self setTitle:t];   //do it
        //subtitle = [[[NSDateFormatter alloc]init] stringFromDate:[[NSDate alloc]init]];
        NSDate *dc = [[NSDate alloc]init];
        NSDateFormatter *df = [[NSDateFormatter alloc]init];
        [df setDateStyle:NSDateFormatterMediumStyle];
        [df setTimeStyle:NSDateFormatterMediumStyle];
        subtitle = [df stringFromDate:dc];
        
        //NSLog(@"%@",subtitle);
    }
    return self;
}
//check why we need this
-(id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                                    title:@"Hometown" ];
}
+(id)mapPointTester
{
    G2MapPoint *mapPointerTester = [[G2MapPoint alloc]initWithCoordinate:CLLocationCoordinate2DMake(45.34, -67.90)
                                                        title:@"Somewhere" ];
    
    NSDate *today = [[NSDate alloc]init];
    NSDateFormatter *dateForm = [[NSDateFormatter alloc]init];
    NSLog(@"%@",[dateForm stringFromDate:today]);
    return mapPointerTester;
    
}

@end
