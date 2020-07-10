//
//  main.m
//  test-oc1
//
//  Created by 陈赐常 on 2020/7/8.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Tire : NSObject
@end

@implementation Tire
- (NSString*) description{
    return @"I am a tire. I last a while.";
}
@end

@interface Engine : NSObject
@end

@implementation Engine
- (NSString*) description{
    return @"I am a engine. Vrooom!";
}
@end

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
- (void)print;
@end

@implementation Car
- (id) init
{
    if(self = [super init]){
        engine = [Engine new];
        tires[0]=[Tire new];
        tires[1]=[Tire new];
        tires[2]=[Tire new];
        tires[3]=[Tire new];
    }
    return (self);
}
- (void)print
{
    NSLog(@"%@",engine);
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
}

@end

typedef enum{
    kCircle,
    kRectangle,
    kEgg
}ShapeType;

typedef enum{
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;

typedef struct{
    int x,y,width,height;
}ShapeRect;
typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
}Shape;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSRect rect = {12,32,6,7};
        NSRect rect2 = NSMakeRect(4,5,6,7);
        
        NSNumber *a,*b,*c;
        a = [NSNumber numberWithInt:10];
        b = [NSNumber numberWithChar:'a'];
        c = [NSNumber numberWithFloat:45.3];
        NSString *ef = @"this is string";
        NSArray *te = [NSArray arrayWithObjects:a,b,c,ef, nil];
        for (id f in te) {
            NSLog(@"test arr:%@",f);
        }
        NSMutableArray *muar = [NSMutableArray arrayWithCapacity:30];
        [muar addObject:a];
        [muar addObject:b];
        [muar addObject:c];
        [muar addObject:te];
        [muar addObject:[NSValue valueWithRect:rect]];
        [muar addObject:[NSValue valueWithRect:rect2]];
        
        
        NSLog(@"this array:%@",te);
        NSLog(@"this mutual array:%@",muar);
        
        NSString *str = @"a:b:c:d:ef";
        NSArray *ar = [str componentsSeparatedByString:@":"];
        NSString *tr = [ar componentsJoinedByString:@";"];
        NSLog(@"%@",tr);
        
        NSEnumerator *iter = [ar objectEnumerator];
        id s;
        while(s = [iter nextObject])
        {
            NSLog(@"while %@",s);
        }
        
        for(id k in ar)
        {
            NSLog(@"for %@",k);
        }
        
        Car *car;
        car = [Car new];
        [car print];
        NSRange range = {40,7};
        NSLog(@"%d %d ",range.location, range.length);
    }
    return 0;
}
