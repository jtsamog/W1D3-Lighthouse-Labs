//
//  SteeringWheel.h
//  Composition
//
//  Created by steve on 2017-05-02.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SteeringWheel : NSObject
@property (nonatomic) NSInteger value;
- (instancetype)initWithValue:(NSInteger)value;
@end
