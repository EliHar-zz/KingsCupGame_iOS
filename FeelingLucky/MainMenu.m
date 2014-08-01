//
//  MainMenu.m
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-03-11.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import "MainMenu.h"

@interface MainMenu ()
@property (strong, nonatomic) IBOutlet ADBannerView *bannerView;

@end



@implementation MainMenu

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.bannerView.alpha = 0;
    
    //Retrieve saved Settings
    NSUserDefaults *savedSettings = [NSUserDefaults new];
    
    settingsChanged = [savedSettings boolForKey:@"settingsChanged"];
    
    if (settingsChanged) {
        
        [self assignRules];
    } else {
        [self assignDefaultRules];
    }
    
    [self saveRules];
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    [[self navigationController] setToolbarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGame:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"toGame" sender:sender];
    
}


- (IBAction)howToPlay:(UIButton *)sender {
    [self performSegueWithIdentifier:@"toInstrM" sender:sender];
    
}


- (IBAction)otherApps:(UIButton *)sender {
    [self performSegueWithIdentifier:@"toBlog" sender:sender];
}

#pragma mark iAd Delegate Methods

- (void) bannerViewDidLoadAd:(ADBannerView *)banner {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView:banner cache:NO];
    [banner setAlpha:1];
    [UIView commitAnimations];
    
}

- (void) bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlDown forView:banner cache:NO];
    [banner setAlpha:0];
    [UIView commitAnimations];
}

- (void) assignDefaultRules
{
    NSUserDefaults *savedSettings = [NSUserDefaults new];
    
    title1 = [savedSettings stringForKey:@"dtitle1"];
    text1 = [savedSettings stringForKey:@"dtext1"];
    
    title2 = [savedSettings stringForKey:@"dtitle2"];
    text2 = [savedSettings stringForKey:@"dtext2"];
    
    title3 = [savedSettings stringForKey:@"dtitle3"];
    text3 = [savedSettings stringForKey:@"dtext3"];
    
    title4 = [savedSettings stringForKey:@"dtitle4"];
    text4 = [savedSettings stringForKey:@"dtext4"];
    
    title5 = [savedSettings stringForKey:@"dtitle5"];
    text5 = [savedSettings stringForKey:@"dtext5"];
    
    title6 = [savedSettings stringForKey:@"dtitle6"];
    text6 = [savedSettings stringForKey:@"dtext6"];
    
    title7 = [savedSettings stringForKey:@"dtitle7"];
    text7 = [savedSettings stringForKey:@"dtext7"];
    
    title8 = [savedSettings stringForKey:@"dtitle8"];
    text8 = [savedSettings stringForKey:@"dtext8"];
    
    title9 = [savedSettings stringForKey:@"dtitle9"];
    text9 = [savedSettings stringForKey:@"dtext9"];
    
    title10 = [savedSettings stringForKey:@"dtitle10"];
    text10 = [savedSettings stringForKey:@"dtext10"];
    
    title11 = [savedSettings stringForKey:@"dtitle11"];
    text11 = [savedSettings stringForKey:@"dtext11"];
    
    title12 = [savedSettings stringForKey:@"dtitle12"];
    text12 = [savedSettings stringForKey:@"dtext12"];
    
    title13 = [savedSettings stringForKey:@"dtitle13"];
    text13 = [savedSettings stringForKey:@"dtext13"];
    
}

- (void) assignRules
{
    NSUserDefaults *savedSettings = [NSUserDefaults new];
    
    title1 = [savedSettings stringForKey:@"title1"];
    text1 = [savedSettings stringForKey:@"text1"];
    
    title2 = [savedSettings stringForKey:@"title2"];
    text2 = [savedSettings stringForKey:@"text2"];
    
    title3 = [savedSettings stringForKey:@"title3"];
    text3 = [savedSettings stringForKey:@"text3"];
    
    title4 = [savedSettings stringForKey:@"title4"];
    text4 = [savedSettings stringForKey:@"text4"];
    
    title5 = [savedSettings stringForKey:@"title5"];
    text5 = [savedSettings stringForKey:@"text5"];
    
    title6 = [savedSettings stringForKey:@"title6"];
    text6 = [savedSettings stringForKey:@"text6"];
    
    title7 = [savedSettings stringForKey:@"title7"];
    text7 = [savedSettings stringForKey:@"text7"];
    
    title8 = [savedSettings stringForKey:@"title8"];
    text8 = [savedSettings stringForKey:@"text8"];
    
    title9 = [savedSettings stringForKey:@"title9"];
    text9 = [savedSettings stringForKey:@"text9"];
    
    title10 = [savedSettings stringForKey:@"title10"];
    text10 = [savedSettings stringForKey:@"text10"];
    
    title11 = [savedSettings stringForKey:@"title11"];
    text11 = [savedSettings stringForKey:@"text11"];
    
    title12 = [savedSettings stringForKey:@"title12"];
    text12 = [savedSettings stringForKey:@"text12"];
    
    title13 = [savedSettings stringForKey:@"title13"];
    text13 = [savedSettings stringForKey:@"text13"];
}

- (void) saveRules
{
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
