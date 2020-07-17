//
//  Car.h
//  car-parts
//
//  Created by 陈赐常 on 2020/7/10.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Tire;
@class Engine;

@interface Car : NSObject
{
    NSString *name;
    NSMutableArray *tires;
    Engine *engine;
}

-(void)setName:(NSString*)newname;
-(NSString*)name;
-(void)setEngine:(Engine*)newEngine;
-(Engine*)engine;
-(void)setTire:(Tire*)tire atindex:(int)index;
-(Tire*)tireAtIndex:(int)index;
-(void)print;
@end

NS_ASSUME_NONNULL_END
