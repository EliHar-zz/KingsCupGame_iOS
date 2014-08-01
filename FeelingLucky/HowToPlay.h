//
//  HowToPlay.h
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-03-10.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/iAd.h"
#import "MainMenu.h"

@interface HowToPlay : MainMenu <UITableViewDelegate, UITableViewDataSource>

- (void) assignDefaultRules;
- (void) assignRules;
- (void) saveRules;

@end
