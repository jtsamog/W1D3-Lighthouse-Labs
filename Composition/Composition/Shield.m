//
//  Shield.m
//  Composition
//
//  Created by steve on 2017-06-27.
//  Copyright © 2017 steve. All rights reserved.
//

#import "Shield.h"

@implementation Shield
- (instancetype)initWithShieldType:(ShieldType)type {
  if (self = [super init]) {
    _shieldType = type;
  }
  return self;
}

// defaults to wood
- (instancetype)init {
  ShieldType type = Wood;
  return [self initWithShieldType:type];
}

- (NSString *)description {
  return [self stringFromShieldType:self.shieldType];
}

- (NSString *)stringFromShieldType:(ShieldType)type {
  switch (type) {
    case Iron:
      return @"Iron";
    case Wood:
      return @"Wood";
    case Plastic:
      return @"Plastic";
    case Saphire:
      return @"Saphire";
  }
}


@end
