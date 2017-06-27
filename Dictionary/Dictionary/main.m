//
//  main.m
//  Dictionary
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

  // NSDictionary
  
  NSDictionary *dict = @{@"name" : @"Bob", @"age" : @22, @"address": @"587 Brink Stree"};
  
  // loop through a dictionary. why am I casting item to id?
  
  for (id item in dict) {
    NSLog(@"line %d: key: %@, value: %@", __LINE__, item, dict[item]);
  }
  
  // Immutable dictionaries cannot be changed
  // dict[@"name"] = @"Henry";
  
  // can't use literal syntax for mutable dictionaries (but there's a trick)
  NSMutableDictionary *mutableDict = [@{@"name" : @"Bob", @"age" : @22, @"address": @"587 Brink Stree"} mutableCopy];
  
  mutableDict[@"name"] = @"Fred";
  
  NSLog(@"line %d: %@", __LINE__, mutableDict[@"name"]);
  
  mutableDict[@"age"] = nil;
  
  NSLog(@"line %d: %@", __LINE__, mutableDict[@"age"]);
  

  return 0;
}
