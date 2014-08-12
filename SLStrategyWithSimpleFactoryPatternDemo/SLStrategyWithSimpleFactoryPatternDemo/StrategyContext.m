//
//  StrategyContext.m
//  SLStrategyWithSimpleFactoryPatternDemo
//
//  Created by dash on 14-8-12.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "StrategyContext.h"

#import "Strategy.h"

@interface StrategyContext ()

@end

@implementation StrategyContext

+ (CGFloat)finalPriceByStrategyString:(NSString *)strategyString
                          originPrice:(CGFloat)originPrice
{
    Strategy *strategy;
    strategy = [Strategy strategyWithIdentifier:strategyString];
    return [strategy finalPriceWithOriginPrice:originPrice];
}

@end
