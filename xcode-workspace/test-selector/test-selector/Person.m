//
//  Person.m
//  test-selector
//
//  Created by 陈赐常 on 2020/7/14.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize age;
@synthesize address;

-(void) eat{
    NSLog(@"Person.eat()");
}

-(void) speak{
    NSLog(@"Person.speak()");
}

-(void) write{
    NSLog(@"Person.write()");
}

-(Person *) getPerson{
    Person *p=[[Person alloc] init];
    p.name=@"li";
    p.age=25;
    p.address=@"上海";
    return p;
}

-(id) getString{
    Person *p=[[Person alloc] init];
    p.name=@"lin";
    p.age=22;
    p.address=@"北京";
    return p;
}

+(void) Info{
    NSLog(@"Person.Info");
}

@end
