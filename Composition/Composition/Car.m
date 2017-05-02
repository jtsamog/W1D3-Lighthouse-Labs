//
//  Car.m
//  Composition
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import "Car.h"
#import "SteeringWheel.h"

@implementation Car
- (instancetype)initWithSteeringWheel:(SteeringWheel *)steeringWheel {
  if (self = [super init]) {
    _steeringWheel = steeringWheel;
  }
  return self;
}

// override init
- (instancetype)init {
  return [self initWithSteeringWheel:nil];
}
@end
