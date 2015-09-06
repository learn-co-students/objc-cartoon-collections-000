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

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;{
    
    NSMutableString *callingAllDwarf = [[NSMutableString alloc] init];
    
    for (NSInteger i=0; i<[dwarfs count]; i++){
       
        NSString *dwarfName=dwarfs[i];
        NSInteger dwarfNumber=i+1;
       
        if (i==[dwarfs count]-1) {
            NSString *callingDwarfLast = [NSString stringWithFormat: @"%li. %@", dwarfNumber, dwarfName ];
            [callingAllDwarf appendString: callingDwarfLast];
   //         NSLog(@"%@",callingDwarfLast);
        }
        else
        {
        NSString *callingDwarf = [NSString stringWithFormat: @"%li. %@ | ", dwarfNumber, dwarfName ];
            [callingAllDwarf appendString: callingDwarf];
  //          NSLog(@"%@",callingDwarf);
        }
    }
    
    
    return callingAllDwarf;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers;{
    
    NSMutableArray *allUpperPowers = [[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i<[powers count]; i++) {
        NSString *planet=powers[i];
        NSString *upperPlanet=[planet uppercaseString];
        upperPlanet=[NSString stringWithFormat:@"%@!",upperPlanet];
        [allUpperPowers addObject:upperPlanet];
        
    }
    
    
    return allUpperPowers;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers;{
    
    NSMutableString *allUpperPowers = [[NSMutableString alloc] init];
    
    for (NSInteger i=0; i<[powers count]; i++) {
        NSString *planet=powers[i];
        NSString *upperPlanet=[planet uppercaseString];
        upperPlanet=[NSString stringWithFormat:@"\n%@!",upperPlanet];
        [allUpperPowers appendString:upperPlanet];
    }
    
    allUpperPowers=[NSMutableString stringWithFormat:@"Let our powers combine:%@\nGo Planet!",allUpperPowers];
    return allUpperPowers;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames;
{
    NSString *cheeseMatch = [[NSString alloc] init];
    
    for (NSInteger i=0; i<[cheesesInStock count]; i++)
        {
        for (NSInteger x=0; x<[premiumCheeseNames count]; x++)
            {
            BOOL match=[cheesesInStock[i] isEqualToString:premiumCheeseNames[x]];
                if (match)
                {
                    cheeseMatch=premiumCheeseNames[x];
                }
            }
        }
  
    if ([cheeseMatch isEqual:@""]){
    cheeseMatch=@"No premium cheeses in stock.";
    }

    return cheeseMatch;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags;{
    
    NSMutableArray *allInBills = [[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i<[moneyBags count]; i++) {
        NSString *coin=moneyBags[i];
        NSUInteger *coinCount=[coin length];
        NSString *billMatch=[NSString stringWithFormat:@"$%lu",coinCount];
        [allInBills addObject:billMatch];
        
    }
    
    
    
    
    return allInBills;
}

@end
