//
//  main.m
//  Encapsulation
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
  Person *person1 = [Person new];
  person1.age = @10;
  NSNumber *age = person1.age;
  NSLog(@"line: %d: age: %@", __LINE__, age);
  return 0;
}
