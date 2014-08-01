//
//  CardGameViewController.h
//  FeelingLucky
//
//  Created by Elias Haroun on 2/15/2014.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/iAd.h"
#import "MainMenu.h"

@interface CardGameViewController : MainMenu <ADBannerViewDelegate> {
    IBOutlet UILabel *cardOrder;
    IBOutlet UILabel *headerInstruction;
    IBOutlet UILabel *kings;
    IBOutlet UIImageView *kingsAnimation;
}

- (IBAction)cardFlipButton:(UIButton *)sender;
+ (void) resetDeck;
- (void) animateKings;

- (void) assignDefaultRules;
- (void) assignRules;
- (void) saveRules;

@end

