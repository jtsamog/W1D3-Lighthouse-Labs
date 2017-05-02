//
//  PaintedDuck.m
//  Inheritance
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import "PaintedDuck.h"

@implementation PaintedDuck
- (instancetype)initWithName:(NSString *)name {
  if (self = [super init]) {
    _name = name;
  }
  return self;
}

- (instancetype)init {
  return [self initWithName:@"Default"];
}

- (NSString *)quack {
  return @"Quack quack";
}
@end
