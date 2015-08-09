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
-(NSString *) stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSString *oo = [[NSString alloc] init];
    
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        
        NSString *f = [NSString stringWithFormat:@"%@. %@ | ", @(i+1), dwarfs[i]];
        
        oo = [oo stringByAppendingString:f];
    }
    
    return [oo substringToIndex:[oo length] -3];
}


-(NSArray *) arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < powers.count; i++) {
        NSString *power = [NSString stringWithFormat:@"%@!", [powers objectAtIndex:i]];
        [arr addObject:[power uppercaseString]];
    }
    
    NSArray *nsArr = [[NSArray alloc] initWithArray:arr];
    
    return nsArr;
}


-(NSString *) summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSMutableString *phrase = [[NSMutableString alloc] initWithFormat:@"Let our powers combine:"];
    
    NSArray *nsPowers = [[NSArray alloc] initWithArray:[self arrayOfPlaneteerShoutsFromArray:powers]];
    
    for (NSUInteger i = 0; i < nsPowers.count; i++) {
        
        NSString *power = [NSString stringWithFormat:@"\n%@", [nsPowers objectAtIndex:i]];
        [phrase appendString: power];
    }
    
    NSString *combine = [[NSString alloc] initWithFormat:@"%@\nGo Planet!", phrase];
    
    return combine;
}

-(NSString *) findFirstOfPremiumCheeses:(NSArray *)premiumCheeses inCheesesInStock:(NSArray *)cheesesInStock {
    
    NSString *found = nil;
    
    for (NSUInteger i = 0; i < premiumCheeses.count; i++) {
        
        NSString *search = [premiumCheeses objectAtIndex:i];
        for (NSUInteger x = 0; x < cheesesInStock.count; x++) {
            
            if ([ search isEqual:[cheesesInStock objectAtIndex:x]]) {
                found = search;
            }
        }
        
    }
    
    if (!found) {
        found = @"No premium cheeses in stock.";
    }
    
    return found;
}

-(NSArray *) arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {

    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger x = 0; x < moneyBags.count; x++) {
        
        // NSLog(@"\n\n\n\n%lu - %lu \n\n\n", (unsigned long)moneyBags.count, x);
        
        NSUInteger counts = 0;
        NSString *c = [moneyBags objectAtIndex:x];
        
        for (NSInteger y = 0; y < [c length]; y++) {
            counts++;
            
            // NSLog(@"%@ - ", @(counts));
        }
        
        NSNumber *numberBill = @(counts);
        
        NSString *bill = [[NSString alloc] initWithFormat:@"$%@", numberBill ];
        [paperBills addObject:bill];
        counts = 0;
    }
    
    NSArray *converted = [[NSArray alloc] initWithArray:paperBills];
    // NSLog(@"\n\n\n\n\n%@-----", converted);
    return converted;
}

@end
