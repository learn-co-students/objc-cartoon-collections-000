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

//    NSString* expectedString = @"Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!";
    
    //construct the return string
    NSMutableString* returnString = [NSMutableString stringWithString:@"Let our powers combine:\n"];

    
    NSArray* returnValueAsArray = [[NSArray alloc] initWithArray:[self arrayOfPlaneteerShoutsFromArray:powers]];
    
    NSString* stringFromArray = [[NSString alloc]initWithString:[returnValueAsArray componentsJoinedByString:@"\n"]];
    

    [returnString appendString:stringFromArray];
    [returnString appendString:@"\nGo Planet!"];
    
    return (NSString*)returnString;
}

- (NSString*)findFirstOfPremiumCheeses:(NSArray*)premiumCheeses inCheesesInStock:(NSArray*)cheesesInStock{

    for (NSString* premiumCheese in premiumCheeses){
        for (NSString* cheese in cheesesInStock){
            if([premiumCheese isEqualToString:cheese]){
                return premiumCheese;
            }
        }
    }
    return @"No premium cheeses in stock.";
}

- (NSArray*)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray*)moneyBags {
//    describe(@"arrayByConvertingMoneyBagsIntoPaperBills:", ^{
//        __block NSArray *scroogesMoneyBags;
//        __block NSArray *scroogesPaperBills;
//        
//        beforeEach(^{
//            scroogesMoneyBags = @[ @"$$$$$"      ,
//                                   @"$"          ,
//                                   @"$$"         ,
//                                   @"$$$$$$$$$$" ];
//            
//            scroogesPaperBills = @[ @"$5"  ,
//                                    @"$1"  ,
//                                    @"$2"  ,
//                                    @"$10" ];
//        });
//        
//        it(@"returns an NSArray object",^{
//            expect([appDelegate arrayByConvertingMoneyBagsIntoPaperBills:scroogesMoneyBags
//                    ]).to.beKindOf([NSArray class]);
//        });
//        
//        it(@"returns on array of numerical strings equivalent to the counts of the dollar signs in the submitted array's strings",^{
//            expect([appDelegate arrayByConvertingMoneyBagsIntoPaperBills:scroogesMoneyBags
//                    ]).to.equal(scroogesPaperBills);
//        });

//    Scrooge McDuck is a real financial conservative and still keeps his money in dollar coins! However, he's decided to try out this new thing called "paper bills" (he hears they're the next big thing); he's brought several bags (strings) of coins to you, a bank teller, to convert into paper money. Write the implementation for arrayByConvertingMoneyBagsIntoPaperBills: to count the dollar coins (one coin is represented by one $) in each string in Scrooge's array into an equivalent paper bill (a string in the manner of @"$20").
    
    NSMutableArray* returnedPaperBills = [NSMutableArray arrayWithArray:@[]];
    for (NSString* moneyBag in moneyBags){
        NSUInteger length = [moneyBag length];
        NSString* newString = [NSString stringWithFormat:@"$%lu",(unsigned long)length];
        [returnedPaperBills addObject:newString];

    }
    return (NSArray*)returnedPaperBills;
}

/**
 
 *  Define your method implementations here.
 
 */

@end
