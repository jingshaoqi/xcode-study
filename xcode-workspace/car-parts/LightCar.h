//
//  LightCar.h
//  car-parts
//
//  Created by 陈赐常 on 2020/7/10.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LightCar : NSObject
{
    NSString *model;
    NSString *name;
}

@property (copy) NSString *model;
@property (retain) NSString *name;
@end

NS_ASSUME_NONNULL_END
