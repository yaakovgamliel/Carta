//
//  G2MapPoint.m
//  carta
//
//  Created by yaakov gamliel on 11/26/12.
//  Copyright (c) 2012 G2think.io. All rights reserved.
//

#import "G2MapPoint.h"

@implementation G2MapPoint
-(id)initWithCoordinate:(CLLocationCoordinate2D)c
                  title:(NSString *)str
{
    self = [super init];
    if (self) {
        [self setCoordinate:c];
        [self setTitle:str];
    }
    return self;
}
-(id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                                    title:@"Hometown"];
}

@end
