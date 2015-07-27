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

- (NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs {
//    NSString* format = @"%d. %@|";
//    it(@"returns a string of all of the dwarfs' names with a number prefix and separated by a '|' symbol"
    NSMutableString* mutableResult = [[NSMutableString alloc]initWithString:@""];
    int index = 1;
    for (NSString* dwarf in dwarfs){
        [mutableResult appendFormat:@"%d. %@ | ", index,dwarf];
        index++;
    }
    NSUInteger length = [mutableResult length];
    
    NSRange range = NSMakeRange(length-3, 2);
    [mutableResult deleteCharactersInRange:range];
    NSLog(@"%@", mutableResult);
    return (NSString*)mutableResult;
}
- (NSArray*)arrayOfPlaneteerShoutsFromArray:(NSArray*)powers {
    return nil;
}
- (NSString*)summonCaptainPlanetWithPowers:(NSArray*)powers{
    return nil;
}
- (NSString*)findFirstOfPremiumCheeses:(NSArray*)premiumCheeses inCheesesInStock:(NSArray*)cheesesInStock{
    return nil;
}
- (NSArray*)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray*)moneyBags {
    return nil;
}

/**
 
 *  Define your method implementations here.
 
 */

@end
