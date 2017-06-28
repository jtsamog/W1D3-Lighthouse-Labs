//
//  Duck.h
//  Inheritance
//
//  Created by steve on 2017-06-28.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Duck : NSObject
@property (nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name NS_DESIGNATED_INITIALIZER;
- (NSString *)quack;
@end
