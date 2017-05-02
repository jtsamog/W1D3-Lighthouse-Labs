//
//  main.m
//  Composition
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "SteeringWheel.h"

int main(int argc, const char * argv[]) {
  SteeringWheel *sw = [[SteeringWheel alloc] initWithValue:60];
  Car *c = [[Car alloc] initWithSteeringWheel:sw];
  NSInteger v = c.steeringWheel.value;
  NSLog(@"line %d steering wheel value is %@ ", __LINE__, @(v));
  
  // With composition I can optionally exclude a component
  Car *c2 = [[Car alloc] init];
  NSInteger v2 = c2.steeringWheel.value;
  NSLog(@"line %d steering wheel value is %@ ", __LINE__, @(v2));
  return 0;
}
