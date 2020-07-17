//
//  Car.m
//  car-parts
//
//  Created by 陈赐常 on 2020/7/10.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import "Tire.h"
#import "Engine.h"
#import "Car.h"


@implementation Car
-(id)init
{
    name = @"benz";
    if(self =[super init]){
        tires = [[NSMutableArray alloc] init];
        int i = 0;
        for (i = 0; i<4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return (self);
}

-(void)dealloc
{
//    [tires release];
//    [engine release];
//    [super dealloc];
}

-(void)setName:(NSString *)newname
{
    name = newname;
}

-(NSString*)name{
    return (name);
}
-(void)setEngine:(Engine *)newEngine
{
//    [newEngine retain];
//    [engine release];
    engine = newEngine;
    
}
-(Engine*)engine
{
    return engine;
}

-(void)setTire:(Tire *)tire atindex:(int)index
{
    [tires replaceObjectAtIndex:index withObject:tire];
}

-(Tire*)tireAtIndex:(int)index
{
    Tire *tire = [tires objectAtIndex:index];
    return (tire);
}
-(void)print
{
    NSLog(@"%@ has:",name);
    for(int i = 0; i < 4; ++i){
        NSLog(@"%@",[self tireAtIndex:i]);
    }
    NSLog(@"%@",engine);
}
@end
