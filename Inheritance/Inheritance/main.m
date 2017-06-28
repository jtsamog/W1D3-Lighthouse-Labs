//
//  main.m
//  Inheritance
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

/*
- Create a super class.
- Create a subclass Rubber Duck to demonstrate overriding and calling super's implementation.
- Create a subclass Decoy Duck to demonstrate overriding and doing nothing
*/

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "PaintedDuck.h"


void makeQuack(Duck *mallard, Duck *painted) {
    NSString *quack1 = [mallard quack];
    NSLog(@"line %d: %@", __LINE__, quack1);
    NSString *quack2 = [painted quack];
    NSLog(@"line %d: %@", __LINE__, quack2);
}

int main(int argc, const char * argv[]) {
  Duck *mallard = [[MallardDuck alloc]initWithName:@"Quacker"];
  Duck *painted = [[PaintedDuck alloc] initWithName:@"Redhead"];
  makeQuack(mallard, painted);
  return 0;
}
