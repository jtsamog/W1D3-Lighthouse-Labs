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
//  number = NULL;
  NSInteger integer = number.integerValue;
  NSLog(@"line %d: %ld", __LINE__, (long)integer);
  NSString *string; // defaults to nil
  NSString *upper = string.uppercaseString;
  NSLog(@"line %d: %@", __LINE__, upper);
  
  // You could check for nil too
  
  if (string == nil) {
    string = @"Yo World";
  }
  
  NSLog(@"line %d: %@", __LINE__, string);
  
  if (nil == 0) {
    NSLog(@"line %d: %@", __LINE__, @"nil evaluates to 0");
  }
  
  if (!nil) {
    NSLog(@"line %d: %@", __LINE__, @"nil evaluates to false");
  }
  
  // NSNull is an object wrapper for nil
  NSArray *array = @[[NSNull null]];
  NSNull *null = array[0];
  NSLog(@"line %d: %@", __LINE__, null);
  
  // Nil Rarely used
  Class someClass = Nil;
  someClass = [NSString class];
  if (someClass == [NSString class]) {
    NSLog(@"line: %d %@",__LINE__, @"Yes it is!" );
  }
  
  // NULL is for C pointers
  int *pInt = NULL;
  NSLog(@"%p", pInt);
  
  pInt = malloc(sizeof(int));
  
  *pInt = 10;
  NSLog(@"%@", @(*pInt));
  
  free(pInt);
  
  
  return 0;
}
