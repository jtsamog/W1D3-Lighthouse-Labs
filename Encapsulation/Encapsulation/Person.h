//
//  Person.h
//  Encapsulation
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
- Properties are merely a convenient syntax for generating this code (Imagine having to write all of this boilerplate code for every property?
- Notice we are using encapsulation to prevent any object from simply setting or getting _age.
- Objc forces you to encapsulate values as it doesn't let you just expose variables in the interface.

*/

@interface Person : NSObject {
  // backing store
  NSNumber *_age;
}

// setter and getter
- (void)setAge:(NSNumber *)age;
- (NSNumber *)age;

// Generates an error because you can't expose a variable in the interface which breaks encapsulation
// NSNumber *someNumber;

// The property is a construct that does the same thing as _age, setAge: and age.
// We can override the setter and getter. Why would we want to do this?
@property (nonatomic) NSNumber *heightInCentimeters;


@end
