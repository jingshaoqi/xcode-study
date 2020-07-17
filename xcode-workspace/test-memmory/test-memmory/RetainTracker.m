//
//  RetainTracker.m
//  test-memmory
//
//  Created by 陈赐常 on 2020/7/15.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker
-(id)init
{
    if(self =[super init])
    {
        NSLog(@"init:Retain count of :%d",[self retainCount]);
    }
    return self;
}
-(void)dealloc
{
    NSLog(@"delloc called. Bye Bye");
    [super dealloc];
}
@end
