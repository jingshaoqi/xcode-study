//
//  main.m
//  test-memmory
//
//  Created by 陈赐常 on 2020/7/15.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RetainTracker.h"

int main(int argc, const char * argv[]) {
    
    RetainTracker *tracker = [RetainTracker new];
    [tracker retain];
    NSLog(@"%d",[tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%d",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%d",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%d",[tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%d",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%d",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%d",[tracker retainCount]);
    @autoreleasepool {
        
    }
    return 0;
}
