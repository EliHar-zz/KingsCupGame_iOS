//
//  CardGameViewController.m
//  FeelingLucky
//
//  Created by Elias Haroun on 2/15/2014.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import "CardGameViewController.h"
#include <stdlib.h>

@interface CardGameViewController ()

@property (strong, nonatomic) IBOutlet UIButton *dropNavBar;
@property (strong, nonatomic) IBOutlet ADBannerView *bannerView;

@end

@implementation CardGameViewController



NSInteger cards[52];

+ (void) resetDeck { // reset deck
    for(NSInteger i=0; i<52; i++)
        cards[i] = 1;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.bannerView.alpha = 0;
    
    [CardGameViewController resetDeck]; // Reset deck
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    self.dropNavBar.alpha = 0;
    
    [[self navigationController] setNavigationBarHidden:YES];
    [[self navigationController] setToolbarHidden:YES];
    // Set action to occur after delay
    [self performSelector:@selector(showNavBar) withObject:nil afterDelay: 1];
}

- (IBAction)tapToDisplay:(UIButton *)sender {
    [self showNavBar];
    [self performSelector:@selector(hideNavBar) withObject:nil afterDelay: 3];
}

- (void) assignDefaultRules
{
    [super assignDefaultRules];
}
- (void) assignRules
{
    [super assignRules];
}
- (void) saveRules
{
    [super saveRules];
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    // Set action to occur after delay
    [self performSelector:@selector(hideNavBar) withObject:nil afterDelay: 2];
    
}

- (void) hideNavBar
{
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    self.dropNavBar.alpha = 1;

}

- (void) showNavBar
{
    self.dropNavBar.alpha = 0;

    [[self navigationController] setNavigationBarHidden:NO animated:YES];
}

// hide status bar
- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark iAd Delegate Methods

- (void) bannerViewWillLoadAd:(ADBannerView *)banner
{
    
}

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

NSInteger kingsCount = 0;

BOOL thereIsCard = NO;


// Go back and reset game
- (IBAction)menu:(UIBarButtonItem *)sender {
    [CardGameViewController resetDeck]; // Reset deck
    
    headerInstruction.text = @"";
    headerInstruction.backgroundColor = nil;
    kingsCount = 0;
    thereIsCard = NO;
    kings.text = [NSString stringWithFormat:@"Kings: %ld", (long)kingsCount];
    [[self navigationController] popToRootViewControllerAnimated:YES];
}

// Reset game when you leave


- (void) animateKings {
    kingsAnimation.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"sideL.png"],[UIImage imageNamed:@"sideR.png"], nil];
    
    kingsAnimation.animationDuration = 0.5;
    kingsAnimation.animationRepeatCount = 5;
    [kingsAnimation startAnimating];
}

- (IBAction)cardFlipButton:(UIButton *)sender {
        
    [kingsAnimation stopAnimating];
    
    headerInstruction.text = @"";
    headerInstruction.backgroundColor = nil;
    
    for(NSUInteger i=0; i<52; i++){
        if (cards[i] == 1){
            thereIsCard = YES;
            break;
        } else
            thereIsCard = NO;
    }
    
    if (!thereIsCard) {
        [CardGameViewController resetDeck]; // Reset deck
        
        headerInstruction.text = @"Fresh Deck of Cards";
        headerInstruction.backgroundColor = [UIColor blackColor];
        kingsCount = 0;
        kings.text = @"Kings: 0";
    }
    
    if ([sender.currentTitle  isEqual: @" "]) {
        
        const NSInteger HIGHEST_CARD = 52;
        
        NSInteger cardNum = arc4random_uniform(HIGHEST_CARD)+1;
        
        while(cards[cardNum-1] == 0) {
            cardNum = arc4random_uniform(HIGHEST_CARD)+1;
        }
        
        if(cards[cardNum-1] != 0)
            cards[cardNum-1] = 0;
        
        switch (cardNum) {
            case 1:
                [sender setBackgroundImage:[UIImage imageNamed:@"c1"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title1;
                break;
            case 2:
                [sender setBackgroundImage:[UIImage imageNamed:@"c2"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title2;
                break;
            case 3:
                [sender setBackgroundImage:[UIImage imageNamed:@"c3"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title3;
                break;
            case 4:
                [sender setBackgroundImage:[UIImage imageNamed:@"c4"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title4;
                break;
            case 5:
                [sender setBackgroundImage:[UIImage imageNamed:@"c5"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title5;
                break;
            case 6:
                [sender setBackgroundImage:[UIImage imageNamed:@"c6"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title6;
                break;
            case 7:
                [sender setBackgroundImage:[UIImage imageNamed:@"c7"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title7;
                break;
            case 8:
                [sender setBackgroundImage:[UIImage imageNamed:@"c8"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title8;
                break;
            case 9:
                [sender setBackgroundImage:[UIImage imageNamed:@"c9"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title9;
                break;
            case 10:
                [sender setBackgroundImage:[UIImage imageNamed:@"c10"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title10;
                break;
            case 11:
                [sender setBackgroundImage:[UIImage imageNamed:@"cj"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title11;
                break;
            case 12:
                [sender setBackgroundImage:[UIImage imageNamed:@"cq"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title12;
                break;
            case 13:
                [sender setBackgroundImage:[UIImage imageNamed:@"ck"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title13;
                kings.text = [NSString stringWithFormat:@"Kings: %ld", (long)++kingsCount];
                if(kingsCount == 4)
                    [self animateKings];
                break;
            case 14:
                [sender setBackgroundImage:[UIImage imageNamed:@"s1"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title1;
                break;
            case 15:
                [sender setBackgroundImage:[UIImage imageNamed:@"s2"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title2;
                break;
            case 16:
                [sender setBackgroundImage:[UIImage imageNamed:@"s3"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title3;
                break;
            case 17:
                [sender setBackgroundImage:[UIImage imageNamed:@"s4"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title4;
                break;
            case 18:
                [sender setBackgroundImage:[UIImage imageNamed:@"s5"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title5;
                break;
            case 19:
                [sender setBackgroundImage:[UIImage imageNamed:@"s6"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title6;
                break;
            case 20:
                [sender setBackgroundImage:[UIImage imageNamed:@"s7"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title7;
                break;
            case 21:
                [sender setBackgroundImage:[UIImage imageNamed:@"s8"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title8;
                break;
            case 22:
                [sender setBackgroundImage:[UIImage imageNamed:@"s9"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title9;
                break;
            case 23:
                [sender setBackgroundImage:[UIImage imageNamed:@"s10"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title10;
                break;
            case 24:
                [sender setBackgroundImage:[UIImage imageNamed:@"sj"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title11;
                break;
            case 25:
                [sender setBackgroundImage:[UIImage imageNamed:@"sq"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title12;
                break;
            case 26:
                [sender setBackgroundImage:[UIImage imageNamed:@"sk"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title13;
                kings.text = [NSString stringWithFormat:@"Kings: %ld", (long)++kingsCount];
                if(kingsCount == 4)
                    [self animateKings];
                break;
            case 27:
                [sender setBackgroundImage:[UIImage imageNamed:@"h1"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title1;
                break;
            case 28:
                [sender setBackgroundImage:[UIImage imageNamed:@"h2"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title2;
                break;
            case 29:
                [sender setBackgroundImage:[UIImage imageNamed:@"h3"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title3;
                break;
            case 30:
                [sender setBackgroundImage:[UIImage imageNamed:@"h4"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title4;
                break;
            case 31:
                [sender setBackgroundImage:[UIImage imageNamed:@"h5"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title5;
                break;
            case 32:
                [sender setBackgroundImage:[UIImage imageNamed:@"h6"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title6;
                break;
            case 33:
                [sender setBackgroundImage:[UIImage imageNamed:@"h7"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title7;
                break;
            case 34:
                [sender setBackgroundImage:[UIImage imageNamed:@"h8"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title8;
                break;
            case 35:
                [sender setBackgroundImage:[UIImage imageNamed:@"h9"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title9;
                break;
            case 36:
                [sender setBackgroundImage:[UIImage imageNamed:@"h10"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title10;
                break;
            case 37:
                [sender setBackgroundImage:[UIImage imageNamed:@"hj"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title11;
                break;
            case 38:
                [sender setBackgroundImage:[UIImage imageNamed:@"hq"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title12;
                break;
            case 39:
                [sender setBackgroundImage:[UIImage imageNamed:@"hk"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title13;
                kings.text = [NSString stringWithFormat:@"Kings: %ld", (long)++kingsCount];
                if(kingsCount == 4)
                    [self animateKings];
                break;
            case 40:
                [sender setBackgroundImage:[UIImage imageNamed:@"d1"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title1;
                break;
            case 41:
                [sender setBackgroundImage:[UIImage imageNamed:@"d2"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title2;
                break;
            case 42:
                [sender setBackgroundImage:[UIImage imageNamed:@"d3"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title3;
                break;
            case 43:
                [sender setBackgroundImage:[UIImage imageNamed:@"d4"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title4;
                break;
            case 44:
                [sender setBackgroundImage:[UIImage imageNamed:@"d5"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title5;
                break;
            case 45:
                [sender setBackgroundImage:[UIImage imageNamed:@"d6"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title6;
                break;
            case 46:
                [sender setBackgroundImage:[UIImage imageNamed:@"d7"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title7;
                break;
            case 47:
                [sender setBackgroundImage:[UIImage imageNamed:@"d8"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title8;
                break;
            case 48:
                [sender setBackgroundImage:[UIImage imageNamed:@"d9"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title9;
                break;
            case 49:
                [sender setBackgroundImage:[UIImage imageNamed:@"d10"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title10;
                break;
            case 50:
                [sender setBackgroundImage:[UIImage imageNamed:@"dj"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title11;
                break;
            case 51:
                [sender setBackgroundImage:[UIImage imageNamed:@"dq"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title12;
                break;
            case 52:
                [sender setBackgroundImage:[UIImage imageNamed:@"dk"]
                                  forState:UIControlStateNormal];
                [sender setTitle:@"" forState:UIControlStateNormal];
                cardOrder.text = title13;
                kings.text = [NSString stringWithFormat:@"Kings: %ld", (long)++kingsCount];
                if(kingsCount == 4)
                    [self animateKings];
                break;
        }
        
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"back"]
                          forState:UIControlStateNormal];
        [sender setTitle:@" " forState:UIControlStateNormal];
        cardOrder.text = @"";
        
    }
    
}
@end
