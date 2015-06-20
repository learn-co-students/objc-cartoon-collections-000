//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    NSArray *dwarvesToBeRollCalled = @[@"Doc",@"Dopey",@"Bashful"];
    NSLog(@"%@",[self rollCallDwarves:dwarvesToBeRollCalled]);

    NSArray *callsToBeGivenWithHeart = @[@"earth",@"wind"];
    NSLog(@"%@",[self summonCaptainPlanet:callsToBeGivenWithHeart]);

    NSLog(@"%@",[self longPlaneteerCalls:callsToBeGivenWithHeart]);

    NSArray *possibleCheeses= @[@"prosciutto", @"camembert", @"baguette"];
    NSLog(@"%@",[self findTheCheese:possibleCheeses]);

    NSArray *scroogesMoney = @[@"$$",@"$",@"$$$"];
    NSLog(@"%@",[self calculateDollarAmountsWithReceipt:scroogesMoney]);

    
    return YES;
}

- (NSString *)rollCallDwarves:(NSArray *)dwarves
{
    NSMutableString *dwarvesString = [[NSMutableString alloc] init];
    NSInteger count = 0;

    for (NSString *dwarf in dwarves) {
        count++;
        NSString *dwarfString = [NSString stringWithFormat:@"%ld. %@", count, dwarf];
        [dwarvesString appendString:dwarfString];
        if (count < [dwarves count]) {
            [dwarvesString appendString:@" | "];
        }

    }

    return dwarvesString;
}

- (NSArray *)summonCaptainPlanet:(NSArray *)planeteerCalls
{
    NSMutableArray *uppercaseCalls = [NSMutableArray new];

    for (NSString *call in planeteerCalls) {
        NSString *uppercaseCall = [call uppercaseString];
        NSString *excitedCall = [uppercaseCall stringByAppendingString:@"!"];
        [uppercaseCalls addObject:excitedCall];
    }

    return uppercaseCalls;
}

- (NSArray *)longPlaneteerCalls:(NSArray *)planeteerCalls
{
    NSMutableArray *longCalls = [NSMutableArray new];

    for (NSString *call in planeteerCalls) {
        if ([call length] > 4) {
            [longCalls addObject:call];
        }
    }

    return longCalls;
}

- (NSString *)findTheCheese:(NSArray *)cheeses
{
    NSArray *cheeseArray = @[ @"cheddar", @"gouda", @"camembert"];

    for (NSString *cheese in cheeses) {
        if ([cheeseArray containsObject:cheese]) {
            return cheese;
        }
    }

    return nil;
}

- (NSArray *)calculateDollarAmountsWithReceipt:(NSArray *)receipt
{
    NSMutableArray *monetaryValues = [NSMutableArray new];

    for (NSString *value in receipt) {
        NSInteger moneyCount = [[value componentsSeparatedByString:@"$"] count] - 1;
        NSString *convertedMoney = [NSString stringWithFormat:@"$%ld", moneyCount];
        [monetaryValues addObject:convertedMoney];
    }

    return monetaryValues;
}

















- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
