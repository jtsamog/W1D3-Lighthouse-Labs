//
//  Hero.m
//  Composition
//
//  Created by steve on 2017-06-27.
//  Copyright © 2017 steve. All rights reserved.
//

#import "Hero.h"
#import "Shield.h"

@implementation Hero
- (instancetype)initWithName:(NSString *)name shield:(Shield *)shield{
  if (self = [super init]) {
    _name = name;
    _shield = shield;
  }
  return self;
}

- (instancetype)init {
  return [self initWithName:@"unnamed" shield:nil];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"The hero %@ has a %@ shield", self.name, self.shield];
}

@end
