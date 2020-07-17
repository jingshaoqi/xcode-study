//
//  Person.h
//  test-selector
//
//  Created by 陈赐常 on 2020/7/14.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    NSString *name;
    int age;
    NSString *address;
}
@property (nonatomic,retain) NSString *name;
@property (nonatomic,assign) int age;
@property (nonatomic,retain) NSString *address;

-(void) eat;

-(void) speak;

-(void) write;

-(Person *) getPerson;

-(id) getString;

+(void) Info;

@end

NS_ASSUME_NONNULL_END
