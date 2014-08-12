//
//  Strategy.h
//  SLStrategyWithSimpleFactoryPatternDemo
//
//  Created by dash on 14-8-12.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kDefaultTwentyPercentDiscountIdentifier;
extern NSString * const kDefaultOneHundredEnoughIdentifier;
extern NSString * const kDefaultIntegrationIdentifier;

@interface Strategy : NSObject

+ (Strategy *)strategyWithIdentifier:(NSString *)identifier;
- (CGFloat)finalPriceWithOriginPrice:(CGFloat)originPrice;

@end