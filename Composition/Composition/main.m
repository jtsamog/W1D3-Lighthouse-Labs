//
//  main.m
//  Composition
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hero.h"
#import "Shield.h"

int main(int argc, const char * argv[]) {

  Shield *shield = [[Shield alloc] initWithShieldType:Saphire];
  Hero *hero1 = [[Hero alloc]initWithName:@"Sparky" shield:shield];
  NSLog(@"%@", hero1);
  
  // We can optionally omit the Shield from our hero.
  Hero *hero2 = [[Hero alloc] init];
  NSLog(@"%@", hero2);

  
  
  
  

  return 0;
}
