//
//  main.m
//  car-parts
//
//  Created by 陈赐常 on 2020/7/10.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "LightCar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *phrase = nil;
        phrase = [NSArray arrayWithObjects:@"a",@"b",@"c",nil];
        [phrase writeToFile:@"/tmp/test.txt" atomically:YES];
        LightCar *lightCar = [LightCar new];
        lightCar.model = @"baoma";
        NSLog(@"Light car model:%@", lightCar.model);
        NSString *str =@"abc";
        NSLog(@"%@",str);
        Car *car = [[Car alloc] init];
        [car setName:@"benz"];
        for (int i=0; i<4; ++i) {
            Tire *tire = [[Tire alloc] init];
            [tire setPressure:23+i];
            [tire setThreadDepth:33+i];
            [car setTire:tire atindex:i];
        }
        
        [car print];
    }
    return 0;
}
