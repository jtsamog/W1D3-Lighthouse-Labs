//
//  SteeringWheel.m
//  Composition
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import "SteeringWheel.h"

@implementation SteeringWheel
- (instancetype)initWithValue:(NSInteger)value {
  if (self = [super init]) {
    _value = value;
  }
  return self;
}
@end
