//
//  RulesViewController.h
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-05-18.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainMenu.h"

@interface RulesViewController : MainMenu <UITextFieldDelegate, UITextViewDelegate>

@property (strong,nonatomic) IBOutlet UITextField *aceTitle;
@property (strong,nonatomic) IBOutlet UITextView *aceText;

@property (strong,nonatomic) IBOutlet UITextField *twoTitle;
@property (strong,nonatomic) IBOutlet UITextView *twoText;

@property (strong,nonatomic) IBOutlet UITextField *threeTitle;
@property (strong,nonatomic) IBOutlet UITextView *threeText;

@property (strong,nonatomic) IBOutlet UITextField *fourTitle;
@property (strong,nonatomic) IBOutlet UITextView *fourText;

@property (strong,nonatomic) IBOutlet UITextField *fiveTitle;
@property (strong,nonatomic) IBOutlet UITextView *fiveText;

@property (strong,nonatomic) IBOutlet UITextField *sixTitle;
@property (strong,nonatomic) IBOutlet UITextView *sixText;

@property (strong,nonatomic) IBOutlet UITextField *sevenTitle;
@property (strong,nonatomic) IBOutlet UITextView *sevenText;

@property (strong,nonatomic) IBOutlet UITextField *eightTitle;
@property (strong,nonatomic) IBOutlet UITextView *eightText;

@property (strong,nonatomic) IBOutlet UITextField *nineTitle;
@property (strong,nonatomic) IBOutlet UITextView *nineText;

@property (strong,nonatomic) IBOutlet UITextField *tenTitle;
@property (strong,nonatomic) IBOutlet UITextView *tenText;

@property (strong,nonatomic) IBOutlet UITextField *jackTitle;
@property (strong,nonatomic) IBOutlet UITextView *jackText;

@property (strong,nonatomic) IBOutlet UITextField *queenTitle;
@property (strong,nonatomic) IBOutlet UITextView *queenText;

@property (strong,nonatomic) IBOutlet UITextField *kingTitle;
@property (strong,nonatomic) IBOutlet UITextView *kingText;


- (void) assignDefaultRules;
- (void) assignRules;
- (void) saveRules;

@end
