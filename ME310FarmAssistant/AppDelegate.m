//
//  AppDelegate.m
//  ME310FarmAssistant
//
//  Created by Tom Hu on 4/4/15.
//  Copyright (c) 2015 Tom Hu. All rights reserved.
//

#import "AppDelegate.h"
#import <MZFormSheetController/MZFormSheetController.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /**
     *
     * Global Style
     *
     */
    // Navigation Bar
    // Bar Tint Color
    [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0x067AB5)];
    // Tint Color
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    // Title
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0], NSForegroundColorAttributeName,
                                                          [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:21.0], NSFontAttributeName,
                                                          nil]];
    
    // Status Bar
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    
    // MZFormSheetBackgroundWindow
    [[MZFormSheetBackgroundWindow appearance] setBackgroundBlurEffect:YES];
    [[MZFormSheetBackgroundWindow appearance] setBlurRadius:5.0];
    [[MZFormSheetBackgroundWindow appearance] setBackgroundColor:[UIColor clearColor]];
    
    // Data Filter Mode
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithUnsignedInteger:FADataFilterModeBoth] forKey:@"DataFilterMode"];
    
    // Threshold
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithDouble:20.0f] forKey:@"MoistureDryThreshold"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithDouble:80.0f] forKey:@"MoistureWetThreshold"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithDouble:30.0f] forKey:@"TranspirationThreshold"];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
