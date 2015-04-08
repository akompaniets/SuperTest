//
//  AppDelegate.m
//  SuperTest
//
//  Created by Mobindustry on 4/8/15.
//  Copyright (c) 2015 ARC. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    windowFrame.origin = CGPointZero;
    self.window = [[UIWindow alloc] initWithFrame:windowFrame];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    MainViewController *mainVC = [[MainViewController alloc] init];
    self.window.rootViewController = mainVC;
    return YES;
}



- (void)applicationWillTerminate:(UIApplication *)application {
   
    [self saveContext];
}

#pragma mark - Core Data stack


@end
