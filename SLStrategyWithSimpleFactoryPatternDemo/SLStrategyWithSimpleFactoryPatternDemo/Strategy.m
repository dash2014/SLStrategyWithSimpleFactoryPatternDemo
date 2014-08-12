//
//  Strategy.m
//  SLStrategyWithSimpleFactoryPatternDemo
//
//  Created by dash on 14-8-12.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "Strategy.h"

#import "TwentyPercentDiscountStrategy.h"
#import "OneHundredEnoughStrategy.h"
#import "integrationStrategy.h"

@implementation Strategy

+ (Strategy *)strategyWithIdentifier:(NSString *)strategyString
{
    Strategy *strategy;
    if ([strategyString isEqualToString:kDefaultTwentyPercentDiscountIdentifier]) {
        strategy = [[TwentyPercentDiscountStrategy alloc] init];
    } else if ([strategyString isEqualToString:kDefaultOneHundredEnoughIdentifier]) {
        strategy = [[OneHundredEnoughStrategy alloc] init];
    } else {
        strategy = [[integrationStrategy alloc] init];
    }
    return strategy;
}

- (CGFloat)finalPriceWithOriginPrice:(CGFloat)originPrice
{
    return 0;
}

@end
