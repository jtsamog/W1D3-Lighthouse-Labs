//
//  main.m
//  Nil
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

  // You can send a message to nil in Objc unlike most languages
  NSNumber *number;
  NSInteger integer = number.integerValue;
  NSLog(@"line %d: %ld", __LINE__, (long)integer);
  NSString *string;
  NSString *upper = string.uppercaseString;
  NSLog(@"line %d: %@", __LINE__, upper);
  
  // You could check for nil too
  
  if (string == nil) {
    string = @"Yo World";
  }
  
  NSLog(@"line %d: %@", __LINE__, string);
  
  NSArray *array = @[[NSNull null]];
  NSNull *null = array[0];
  NSLog(@"line %d: %@", __LINE__, null);
  
  return 0;
}
