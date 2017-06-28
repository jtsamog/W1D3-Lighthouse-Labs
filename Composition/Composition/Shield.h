//
//  Shield.h
//  Composition
//
//  Created by steve on 2017-06-27.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ShieldType) {
  Iron,
  Wood,
  Plastic,
  Saphire
};


@interface Shield : NSObject
- (instancetype)initWithShieldType:(ShieldType)type NS_DESIGNATED_INITIALIZER;
@property (nonatomic, assign) ShieldType shieldType;
@end
