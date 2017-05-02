//
//  Car.h
//  Composition
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SteeringWheel;

@interface Car : NSObject
@property (nonatomic) SteeringWheel *steeringWheel;
- (instancetype)initWithSteeringWheel:(SteeringWheel *)steeringWheel NS_DESIGNATED_INITIALIZER;
@end
