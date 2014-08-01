//
//  CardGameAppDelegate.m
//  FeelingLucky
//
//  Created by Elias Haroun on 2/15/2014.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import "CardGameAppDelegate.h"
#import "MainMenu.h"


NSString *title1 = @"Waterfall";
NSString *text1 = @"To perform a waterfall, each player starts drinking their beverage at the same time as the person to their left. No player can stop drinking until the player before them stops.";
NSString *title2 = @"Give Two";
NSString *text2 = @"You point at two people and tell them to drink. You can also tell one person to take two drinks.";
NSString *title3 = @"Take Three";
NSString *text3 = @"You take three drinks.";
NSString *title4 = @"Take Two / Give Two";
NSString *text4 = @"You give out two drinks, and take two yourself.";
NSString *title5 = @"Set A Rule";
NSString *text5 = @"Set a rule to be followed. Eg drink with your left hand. eg. Tap your head before you drink.";
NSString *title6 = @"Thumbs";
NSString *text6 = @"Place your thumb on the table, and try to do this without anyone noticing. As people notice, they will also have to put their thumb on the table too. The last person to place their thumb on the table drinks.";
NSString *title7 = @"Raise your hand to heaven";
NSString *text7 = @"Last person to raise their hand will drink.";
NSString *title8 = @"Choose a Mate";
NSString *text8 = @"Choose a person to be your mate and they drink when you drink for the rest of the game.";
NSString *title9 = @"Rhyme Time";
NSString *text9 = @"You say a word, and the person to your right has to say a word that rhymes. This continues around the table until someone can't think of a word. This person must drink. The same word can not be used twice.";
NSString *title10 = @"Categories";
NSString *text10 = @"You come up with a category of things, and the person to your right must come up with something that falls within that category. This goes on around the table until someone can't come up with anything. This person must drink.";
NSString *title11 = @"Guys Drink";
NSString *text11 = @"All guys on the table must take a drink.";
NSString *title12 = @"Girls Drink";
NSString *text12 = @"All girls on the table must take a drink.";
NSString *title13 = @"King's Cup";
NSString *text13 = @"When each of the first 3 Kings are drawn, the person who drew the card puts some of their drink into the King's Cup at the center of the table. When the 4th King is drawn, the person who drew the 4th King must drink the contents of the King's Cup.";

BOOL settingsChanged = NO;


@implementation CardGameAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *navigationController = [UINavigationController new];
    
    MainMenu *myRoot = [MainMenu new];
    
    [navigationController pushViewController:myRoot animated:YES];
    
    
    // Save default values
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    [saveSettings setObject:title1 forKey:@"dtitle1"];
    [saveSettings setObject:text1 forKey:@"dtext1"];
    
    [saveSettings setObject:title2 forKey:@"dtitle2"];
    [saveSettings setObject:text2 forKey:@"dtext2"];
    
    [saveSettings setObject:title3 forKey:@"dtitle3"];
    [saveSettings setObject:text3 forKey:@"dtext3"];
    
    [saveSettings setObject:title4 forKey:@"dtitle4"];
    [saveSettings setObject:text4 forKey:@"dtext4"];
    
    [saveSettings setObject:title5 forKey:@"dtitle5"];
    [saveSettings setObject:text5 forKey:@"dtext5"];
    
    [saveSettings setObject:title6 forKey:@"dtitle6"];
    [saveSettings setObject:text6 forKey:@"dtext6"];
    
    [saveSettings setObject:title7 forKey:@"dtitle7"];
    [saveSettings setObject:text7 forKey:@"dtext7"];
    
    [saveSettings setObject:title8 forKey:@"dtitle8"];
    [saveSettings setObject:text8 forKey:@"dtext8"];
    
    [saveSettings setObject:title9 forKey:@"dtitle9"];
    [saveSettings setObject:text9 forKey:@"dtext9"];
    
    [saveSettings setObject:title10 forKey:@"dtitle10"];
    [saveSettings setObject:text10 forKey:@"dtext10"];
    
    [saveSettings setObject:title11 forKey:@"dtitle11"];
    [saveSettings setObject:text11 forKey:@"dtext11"];
    
    [saveSettings setObject:title12 forKey:@"dtitle12"];
    [saveSettings setObject:text12 forKey:@"dtext12"];
    
    [saveSettings setObject:title13 forKey:@"dtitle13"];
    [saveSettings setObject:text13 forKey:@"dtext13"];
    
    [saveSettings synchronize];
    
    
    return YES;
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
    
    
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    [saveSettings setObject:title1 forKey:@"title1"];
    [saveSettings setObject:text1 forKey:@"text1"];
    
    [saveSettings setObject:title2 forKey:@"title2"];
    [saveSettings setObject:text2 forKey:@"text2"];
    
    [saveSettings setObject:title3 forKey:@"title3"];
    [saveSettings setObject:text3 forKey:@"text3"];
    
    [saveSettings setObject:title4 forKey:@"title4"];
    [saveSettings setObject:text4 forKey:@"text4"];
    
    [saveSettings setObject:title5 forKey:@"title5"];
    [saveSettings setObject:text5 forKey:@"text5"];
    
    [saveSettings setObject:title6 forKey:@"title6"];
    [saveSettings setObject:text6 forKey:@"text6"];
    
    [saveSettings setObject:title7 forKey:@"title7"];
    [saveSettings setObject:text7 forKey:@"text7"];
    
    [saveSettings setObject:title8 forKey:@"title8"];
    [saveSettings setObject:text8 forKey:@"text8"];
    
    [saveSettings setObject:title9 forKey:@"title9"];
    [saveSettings setObject:text9 forKey:@"text9"];
    
    [saveSettings setObject:title10 forKey:@"title10"];
    [saveSettings setObject:text10 forKey:@"text10"];
    
    [saveSettings setObject:title11 forKey:@"title11"];
    [saveSettings setObject:text11 forKey:@"text11"];
    
    [saveSettings setObject:title12 forKey:@"title12"];
    [saveSettings setObject:text12 forKey:@"text12"];
    
    [saveSettings setObject:title13 forKey:@"title13"];
    [saveSettings setObject:text13 forKey:@"text13"];
    
    [saveSettings synchronize];
    
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
    
    
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    [saveSettings setObject:title1 forKey:@"title1"];
    [saveSettings setObject:text1 forKey:@"text1"];
    
    [saveSettings setObject:title2 forKey:@"title2"];
    [saveSettings setObject:text2 forKey:@"text2"];
    
    [saveSettings setObject:title3 forKey:@"title3"];
    [saveSettings setObject:text3 forKey:@"text3"];
    
    [saveSettings setObject:title4 forKey:@"title4"];
    [saveSettings setObject:text4 forKey:@"text4"];
    
    [saveSettings setObject:title5 forKey:@"title5"];
    [saveSettings setObject:text5 forKey:@"text5"];
    
    [saveSettings setObject:title6 forKey:@"title6"];
    [saveSettings setObject:text6 forKey:@"text6"];
    
    [saveSettings setObject:title7 forKey:@"title7"];
    [saveSettings setObject:text7 forKey:@"text7"];
    
    [saveSettings setObject:title8 forKey:@"title8"];
    [saveSettings setObject:text8 forKey:@"text8"];
    
    [saveSettings setObject:title9 forKey:@"title9"];
    [saveSettings setObject:text9 forKey:@"text9"];
    
    [saveSettings setObject:title10 forKey:@"title10"];
    [saveSettings setObject:text10 forKey:@"text10"];
    
    [saveSettings setObject:title11 forKey:@"title11"];
    [saveSettings setObject:text11 forKey:@"text11"];
    
    [saveSettings setObject:title12 forKey:@"title12"];
    [saveSettings setObject:text12 forKey:@"text12"];
    
    [saveSettings setObject:title13 forKey:@"title13"];
    [saveSettings setObject:text13 forKey:@"text13"];
    
    [saveSettings synchronize];
}

@end
