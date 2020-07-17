//
//  Tire.h
//  car-parts
//
//  Created by 陈赐常 on 2020/7/10.
//  Copyright © 2020 陈赐常. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject
{
    float pressure;
    float threadDepth;
}
-(void)setPressure:(float)pressure;
-(float)pressure;
-(void)setThreadDepth:(float)threadDepth;
-(float)threadDepth;
@end

NS_ASSUME_NONNULL_END
