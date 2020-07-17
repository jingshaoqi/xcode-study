//
//  main.m
//  test-selector
//
//  Created by 陈赐常 on 2020/7/14.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id stu=[[Student alloc] init];
        [stu eat];
                
        id per=[[Person alloc] init];
        [per eat];
        
        //isMemberOfClass 用于判断是否是某个类的实例
        bool flag1=[stu isMemberOfClass:[Student class]];
        NSLog(@"%d",flag1);
        bool flag2=[stu isMemberOfClass:[Person class]];
        NSLog(@"%d",flag2);
        
        // isKindOfClass 判断是否为某个类的实例或者某个类子类的实例
        flag1=[stu isKindOfClass:[Student class]];
        NSLog(@"%d",flag1);
        flag2=[stu isKindOfClass:[Person class]];
        NSLog(@"%d",flag2);
        
        //respondsToSelector 用于判断某个类型或者对象是否有能力回应(调用)指定的方法
        bool flag3=[per respondsToSelector:@selector(eat)];
        NSLog(@"%d",flag3);
        
        bool flag4=[stu respondsToSelector:@selector(eat)];
        NSLog(@"%d",flag4);
        
        bool flag5=[per respondsToSelector:@selector(Info)];
        NSLog(@"%d",flag5);
        
        bool flag6=[Person respondsToSelector:@selector(Info)];
        NSLog(@"%d",flag6);
        
        //instancesRespondToSelector 用于判断某个对象的实例是否有能力回应(调用)指定的方法
        bool flag7=[Person instancesRespondToSelector:@selector(eat)];
        NSLog(@"%d",flag7);
        bool flag8=[Person instancesRespondToSelector:@selector(Info)];
        NSLog(@"%d",flag8);
        
        [stu performSelector:@selector(eat)];
        [Person performSelector:@selector(Info)];
        
        [stu performSelector:@selector(speak:) withObject:@"ddddd"];
        [stu performSelector:@selector(write:andAge:) withObject:@"fasdfadaf" withObject:@"333"];
    }
    return 0;
}
