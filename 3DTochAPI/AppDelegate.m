//
//  AppDelegate.m
//  3DTochAPI
//
//  Created by cpzx4 on 15/9/30.
//  Copyright (c) 2015年 Sgabg. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIApplicationShortcutItem *messageShortcutItem = [[UIApplicationShortcutItem alloc] initWithType:@"我的消息" localizedTitle:@"我的消息"];
    UIApplicationShortcutItem *userCenterShortcutItem = [[UIApplicationShortcutItem alloc] initWithType:@"个人中心" localizedTitle:@"个人中心"];
    UIApplicationShortcutItem *shopShortcutItem = [[UIApplicationShortcutItem alloc] initWithType:@"购物车" localizedTitle:@"购物车"];
    NSArray *ShortcutItems = [[NSArray alloc] initWithObjects:messageShortcutItem, userCenterShortcutItem,shopShortcutItem, nil];
    [[UIApplication sharedApplication] setShortcutItems:ShortcutItems];
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    if ([shortcutItem.localizedTitle  isEqual: @"我的消息"]) {
        return;
    }
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
