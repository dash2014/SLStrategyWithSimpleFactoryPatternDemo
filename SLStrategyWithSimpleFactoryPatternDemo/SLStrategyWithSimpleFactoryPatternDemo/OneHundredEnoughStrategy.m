//
//  OneHundredEnoughStrategy.m
//  SLStrategyWithSimpleFactoryPatternDemo
//
//  Created by dash on 14-8-12.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "OneHundredEnoughStrategy.h"

static NSInteger const kDefaultDiscount = 15;

@implementation OneHundredEnoughStrategy

- (CGFloat)finalPriceWithOriginPrice:(CGFloat)originPrice
{
    return originPrice - kDefaultDiscount;
}

@end
