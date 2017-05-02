//
//  Person.m
//  Encapsulation
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(NSNumber *)age {
  NSLog(@"line %d: %s got called with value: %@ ", __LINE__, __PRETTY_FUNCTION__, age);
  _age = age;
}
- (NSNumber *)age {
  NSLog(@"line %d: %s got called to retrieve value: %@ ", __LINE__, __PRETTY_FUNCTION__, _age);
  return _age;
}


@end
