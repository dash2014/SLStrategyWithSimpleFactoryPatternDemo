//
//  ViewController.m
//  SLStrategyWithSimpleFactoryPatternDemo
//
//  Created by dash on 14-8-11.
//  Copyright (c) 2014年 com.dash.Qjie. All rights reserved.
//

#import "ViewController.h"

#import "StrategyContext.h"

NSString * const kDefaultTwentyPercentDiscountIdentifier = @"kDefaultTwentyPercentDiscountIdentifier";
NSString * const kDefaultOneHundredEnoughIdentifier = @"kDefaultOneHundredEnoughIdentifier";
NSString * const kDefaultIntegrationIdentifier = @"kDefaultIntegrationIdentifier";

static NSInteger const kDefaultOriginPrice = 100;

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *twentyPercentDiscountButton;
@property (nonatomic, weak) IBOutlet UIButton *oneHundredEnoughButton;
@property (nonatomic, weak) IBOutlet UIButton *integrationButton;
@property (nonatomic, weak) IBOutlet UILabel *finalPriceLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapButton:(id)sender
{
    NSString *identifier;
    if (sender == self.twentyPercentDiscountButton) {
        identifier = kDefaultTwentyPercentDiscountIdentifier;
    } else if (sender == self.oneHundredEnoughButton) {
        identifier = kDefaultOneHundredEnoughIdentifier;
    } else {
        identifier = kDefaultIntegrationIdentifier;
    }
    CGFloat finalPrice = [StrategyContext finalPriceByStrategyString:identifier
                                                         originPrice:kDefaultOriginPrice];
    self.finalPriceLabel.text = [NSString stringWithFormat:@"%f",finalPrice];
}

@end
