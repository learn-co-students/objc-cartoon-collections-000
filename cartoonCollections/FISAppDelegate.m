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


    return (NSString*)mutableResult;
}
- (NSArray*)arrayOfPlaneteerShoutsFromArray:(NSArray*)powers {
//    Write the implementation of arrayOfPlaneteerShoutsFromArray:
//    to take each of the five Planeteer's powers in the argument array and convert them into uppercase while adding an ! ("exclamation point") to the end. Return the array of altered strings. Again, don't hard code the answer. Solve this problem programmatically with loops and string interpolation!
    
//    NSArray* expectedPowersAsShouts = @[ @"EARTH!" ,
//                        @"FIRE!"  ,
//                        @"WIND!"  ,
//                        @"WATER!" ,
//                        @"HEART!" ];
    
    NSMutableArray* mutablePower = [NSMutableArray arrayWithArray:@[]];
    
    for (NSString* power in powers){
        NSString* newPower = [NSString stringWithFormat:
                              @"%@!",[power uppercaseString]];
        [mutablePower addObject:newPower];
    }
    return (NSArray*)mutablePower;
}
- (NSString*)summonCaptainPlanetWithPowers:(NSArray*)powers{
//    Now that the Planeteers have practiced their shouts, they need to combine their powers to take pollution down to zero! Write the implementation for summonCaptainPlanetWithPowers: to take the five Planeteers' powers and combine them into the Planeteer phrase that summons Captain Planet!
//        * The phrase begins with "Let our powers combine:",
//        * Then each Planeteer shouts their power in sequence,
//        * Then the phrase ends with "Go Planet!".
//        * Each piece of the phrase should be separated by a new line (`\n`), and don't forget to capitalize "Planet!" as proper noun.

    NSString* expectedString = @"Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!";
    
    //construct the return string
    NSMutableString* returnString = [NSMutableString stringWithString:@"Let our powers combine:\n"];

    
    NSArray* returnValueAsArray = [[NSArray alloc] initWithArray:[self arrayOfPlaneteerShoutsFromArray:powers]];
    
    NSString* stringFromArray = [[NSString alloc]initWithString:[returnValueAsArray componentsJoinedByString:@"\n"]];
    
    NSLog(@"\nString From Array is %@",stringFromArray);
    NSLog(@"\nReturn String is Now %@",returnString);
    [returnString appendString:stringFromArray];
    NSLog(@"\nAfter [returnString appendString:stringFromArray] Return String is Now %@",returnString);
    [returnString appendString:@"\nGo Planet!"];
    NSLog(@"\nAfter [returnString appendString:@\"\nGo Planet!\"]Return String is Now %@",returnString);
    NSLog(@"\nExpected String is %@\n Return string is%@\n",expectedString,returnString);
    
    return (NSString*)returnString;
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
