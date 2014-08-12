//
//  TwentyPercentDiscountStrategy.m
//  SLStrategyWithSimpleFactoryPatternDemo
//
//  Created by dash on 14-8-12.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "TwentyPercentDiscountStrategy.h"

@implementation TwentyPercentDiscountStrategy

- (CGFloat)finalPriceWithOriginPrice:(CGFloat)originPrice
{
    return originPrice * 0.8;
}

@end
