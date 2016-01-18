//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    
    NSMutableArray *rollCall = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        [rollCall addObject:[NSString stringWithFormat:@"%li. %@", i + 1, dwarfs[i]]];
    }
    
    return [rollCall componentsJoinedByString:@" | "];
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [shouts addObject:[NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]]];
    }
    
    return shouts;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    return [NSString stringWithFormat:@"Let our powers combine:\n%@\nGo Planet!", [shouts componentsJoinedByString:@"\n"]];
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        if ([premiumCheeseNames containsObject:cheesesInStock[i]]) {
            return cheesesInStock[i];
        }
    }
    
    return @"No premium cheeses in stock.";
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneybags{
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneybags count]; i++) {
        [paperBills addObject:[NSString stringWithFormat:@"$%li", [moneybags[i] length]]];
    }
    
    return paperBills;
}

@end
