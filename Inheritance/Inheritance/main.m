//
//  main.m
//  Inheritance
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "PaintedDuck.h"

void makeQuack(MallardDuck *mallard, PaintedDuck *painted) {
  if (mallard) {
    NSString *quack = [mallard quack];
    NSLog(@"line %d: %@", __LINE__, quack);
  }
  
  if (painted) {
    NSString *quack = [painted quack];
    NSLog(@"line %d: %@", __LINE__, quack);
  }

}

int main(int argc, const char * argv[]) {
  MallardDuck *mallard = [[MallardDuck alloc]initWithName:@"Quacker"];
  PaintedDuck *painted = [[PaintedDuck alloc] initWithName:@"Redhead"];
  makeQuack(mallard, painted);
  return 0;
}
