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
    
    NSRange range = NSMakeRange(length-3, 3);
    [mutableResult deleteCharactersInRange:range];
//    NSRange range2 = NSMakeRange(0, 1);
//    [mutableResult deleteCharactersInRange:range2];
    
    NSLog(@"MUTABLE RESULT IS ********************\n%@", mutableResult);
        NSString *expectedRollCall = @"1. Doc | 2. Grumpy | 3. Happy | 4. Sleepy | 5. Bashful | 6. Sneezy | 7. Dopey";
    NSLog(@"Length of my return string is %lu\n", (unsigned long)[mutableResult length]);
    
    NSLog(@"ExpectedString is ********************\n%@", expectedRollCall);
    NSLog(@"Length of expected string is %lu\n", (unsigned long)[expectedRollCall length]);
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
