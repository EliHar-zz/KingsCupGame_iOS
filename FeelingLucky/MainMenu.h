//
//  MainMenu.h
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-03-11.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface MainMenu : UIViewController <ADBannerViewDelegate>

- (void) assignDefaultRules;
- (void) assignRules;
- (void) saveRules;

@end

extern NSString *title1;
extern NSString *text1;

extern NSString *title2;
extern NSString *text2;

extern NSString *title3;
extern NSString *text3;

extern NSString *title4;
extern NSString *text4;

extern NSString *title5;
extern NSString *text5;

extern NSString *title6;
extern NSString *text6;

extern NSString *title7;
extern NSString *text7;

extern NSString *title8;
extern NSString *text8;

extern NSString *title9;
extern NSString *text9;

extern NSString *title10;
extern NSString *text10;

extern NSString *title11;
extern NSString *text11;

extern NSString *title12;
extern NSString *text12;

extern NSString *title13;
extern NSString *text13;

extern BOOL settingsChanged;

