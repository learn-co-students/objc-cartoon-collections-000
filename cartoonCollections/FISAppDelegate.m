//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSMutableString *roll = [[NSMutableString alloc]init];
    for (NSInteger i=0; i <[dwarfs count]; i++) {
        if (i == [dwarfs count]-1) {
            [roll appendFormat:@"%li. %@", i+1, dwarfs[i]];
        } else {
            [roll appendFormat:@"%li. %@ | ", i+1, dwarfs[i]];
        }
    }
   
    return roll;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *shouts = [[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < [powers count]; i++) {
        NSString *shout = [NSString stringWithFormat: @"%@!", [powers[i] uppercaseString]];
        [shouts addObject:shout];
    }
    return shouts;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSMutableString *summon = [@"Let our powers combine:\n" mutableCopy];
    for (NSInteger i = 0; i < [powers count]; i++) {
        NSString *shout = [NSString stringWithFormat: @"%@!\n", [powers[i] uppercaseString]];
        [summon appendString:shout];
    }
    [summon appendString:@"Go Planet!"];
    return summon;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *) cheesesInStock premiumCheeseNames:(NSArray *) premiumCheeseNames{
    for (NSInteger i =0; i<[cheesesInStock count]; i++) {
        if ([premiumCheeseNames containsObject:cheesesInStock[i]]) {
            return cheesesInStock[i];
        }
    }
    return @"No premium cheeses in stock.";
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *) moneyBags{
    NSMutableArray *bills = [[NSMutableArray alloc]init];
    for (NSInteger i =0; i < [moneyBags count]; i++) {
        
        NSInteger numberOfBills = [[moneyBags[i] componentsSeparatedByString:@"$"]count]-1;
        [bills addObject:[NSString stringWithFormat:@"$%li", numberOfBills]];
    }
    return bills;
}

@end
