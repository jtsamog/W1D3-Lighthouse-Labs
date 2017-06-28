//
//  Hero.h
//  Composition
//
//  Created by steve on 2017-06-27.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Shield;

@interface Hero : NSObject
- (instancetype)initWithName:(NSString *)name shield:(Shield *)shield NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong) Shield *shield;
@property (nonatomic, copy) NSString *name;
@end
