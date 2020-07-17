//
//  Tire.m
//  car-parts
//
//  Created by 陈赐常 on 2020/7/10.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import "Tire.h"

@implementation Tire
-(id)init
{
    if(self = [super init])
    {
        pressure = 34.0;
        threadDepth = 30.0;
    }
    return (self);
}
-(void)setPressure:(float)newPressure
{
    pressure = newPressure;
}
-(float)pressure
{
    return (pressure);
}
-(void)setThreadDepth:(float)newThreadDepth
{
    threadDepth = newThreadDepth;
}
-(float)threadDepth
{
    return (threadDepth);
}
-(NSString*)description
{
    NSString *desc = nil;
    desc = [NSString stringWithFormat:@"Tire: Pressure:%f ThreadDepth:%f",pressure, threadDepth];
    return (desc);
}
@end
