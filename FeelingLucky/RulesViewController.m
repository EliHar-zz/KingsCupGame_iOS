//
//  RulesViewController.m
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-05-18.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import "RulesViewController.h"

@interface RulesViewController ()

@end

@implementation RulesViewController

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
    
    //Settings has been accessed
    settingsChanged = YES;
    
    NSUserDefaults *saveValue = [NSUserDefaults new];
    [saveValue setBool:settingsChanged forKey:@"settingsChanged"];
    [saveValue synchronize];
    
    self.aceTitle.text = title1;
    self.aceText.text = text1;
    
    self.twoTitle.text = title2;
    self.twoText.text = text2;
    
    self.threeTitle.text = title3;
    self.threeText.text = text3;
    
    self.fourTitle.text = title4;
    self.fourText.text = text4;
    
    self.fiveTitle.text = title5;
    self.fiveText.text = text5;
    
    self.sixTitle.text = title6;
    self.sixText.text = text6;
    
    self.sevenTitle.text = title7;
    self.sevenText.text = text7;
    
    self.eightTitle.text = title8;
    self.eightText.text = text8;
    
    self.nineTitle.text = title9;
    self.nineText.text = text9;
    
    self.tenTitle.text = title10;
    self.tenText.text = text10;
    
    self.jackTitle.text = title11;
    self.jackText.text = text11;
    
    self.queenTitle.text = title12;
    self.queenText.text = text12;
    
    self.kingTitle.text = title13;
    self.kingText.text = text13;
    
    //Set Delegate
    self.aceTitle.delegate = self;
    self.aceText.delegate = self;
    
    self.twoTitle.delegate = self;
    self.twoText.delegate = self;
    
    self.threeTitle.delegate = self;
    self.threeText.delegate = self;
    
    self.fourTitle.delegate = self;
    self.fourText.delegate = self;
    
    self.fiveTitle.delegate = self;
    self.fiveText.delegate = self;
    
    self.sixTitle.delegate = self;
    self.sixText.delegate = self;
    
    self.sevenTitle.delegate = self;
    self.sevenText.delegate = self;
    
    self.eightTitle.delegate = self;
    self.eightText.delegate = self;
    
    self.nineTitle.delegate = self;
    self.nineText.delegate = self;
    
    self.tenTitle.delegate = self;
    self.tenText.delegate = self;
    
    self.jackTitle.delegate = self;
    self.jackText.delegate = self;
    
    self.queenTitle.delegate = self;
    self.queenText.delegate = self;
    
    self.kingTitle.delegate = self;
    self.kingText.delegate = self;
    
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    [[self navigationController] setNavigationBarHidden:NO];
    [[self navigationController] setToolbarHidden:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// UITextField dismiss keyboard
- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}

- (BOOL) textViewShouldEndEditing:(UITextView *)textView {
    [textView resignFirstResponder];
    return YES;
}


- (IBAction)aceBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title1 isEqualToString:self.aceTitle.text]) {
        title1 = self.aceTitle.text;
        [saveSettings setObject:title1 forKey:@"title1"];
    }
    
    if (![text1 isEqualToString:self.aceText.text]){
        text1 = self.aceText.text;
        [saveSettings setObject:text1 forKey:@"text1"];
    }

    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)twoBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title2 isEqualToString:self.twoTitle.text]) {
        title2 = self.twoTitle.text;
        [saveSettings setObject:title2 forKey:@"title2"];
    }
    
    if (![text2 isEqualToString:self.twoText.text]){
        text2 = self.twoText.text;
        [saveSettings setObject:text2 forKey:@"text2"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)threeBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title3 isEqualToString:self.threeTitle.text]) {
        title3 = self.threeTitle.text;
        [saveSettings setObject:title3 forKey:@"title3"];
    }
    
    if (![text3 isEqualToString:self.threeText.text]){
        text3 = self.threeText.text;
        [saveSettings setObject:text3 forKey:@"text3"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)fourBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title4 isEqualToString:self.fourTitle.text]) {
        title4 = self.fourTitle.text;
        [saveSettings setObject:title4 forKey:@"title4"];
    }
    
    if (![text4 isEqualToString:self.fourText.text]){
        text4 = self.fourText.text;
        [saveSettings setObject:text4 forKey:@"text4"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)fiveBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title5 isEqualToString:self.fiveTitle.text]) {
        title5 = self.fiveTitle.text;
        [saveSettings setObject:title5 forKey:@"title5"];
    }
    
    if (![text5 isEqualToString:self.fiveText.text]){
        text5 = self.fiveText.text;
        [saveSettings setObject:text5 forKey:@"text5"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)sixBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title6 isEqualToString:self.sixTitle.text]) {
        title6 = self.sixTitle.text;
        [saveSettings setObject:title6 forKey:@"title6"];
    }
    
    if (![text6 isEqualToString:self.sixText.text]){
        text6 = self.sixText.text;
        [saveSettings setObject:text6 forKey:@"text6"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}

- (IBAction)sevenBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title7 isEqualToString:self.sevenTitle.text]) {
        title7 = self.sevenTitle.text;
        [saveSettings setObject:title7 forKey:@"title7"];
    }
    
    if (![text7 isEqualToString:self.sevenText.text]){
        text7 = self.sevenText.text;
        [saveSettings setObject:text7 forKey:@"text7"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)eightBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title8 isEqualToString:self.eightTitle.text]) {
        title8 = self.eightTitle.text;
        [saveSettings setObject:title8 forKey:@"title8"];
    }
    
    if (![text8 isEqualToString:self.eightText.text]){
        text8 = self.eightText.text;
        [saveSettings setObject:text8 forKey:@"text8"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)nineBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title9 isEqualToString:self.nineTitle.text]) {
        title9 = self.nineTitle.text;
        [saveSettings setObject:title9 forKey:@"title9"];
    }
    
    if (![text9 isEqualToString:self.nineText.text]){
        text9 = self.nineText.text;
        [saveSettings setObject:text9 forKey:@"text9"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)tenBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title10 isEqualToString:self.tenTitle.text]) {
        title10 = self.tenTitle.text;
        [saveSettings setObject:title10 forKey:@"title10"];
    }
    
    if (![text10 isEqualToString:self.tenText.text]){
        text10 = self.tenText.text;
        [saveSettings setObject:text10 forKey:@"text10"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)jackBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title11 isEqualToString:self.jackTitle.text]) {
        title11 = self.jackTitle.text;
        [saveSettings setObject:title11 forKey:@"title11"];
    }
    
    if (![text11 isEqualToString:self.jackText.text]){
        text11 = self.jackText.text;
        [saveSettings setObject:text11 forKey:@"text11"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)queenBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title12 isEqualToString:self.queenTitle.text]) {
        title12 = self.queenTitle.text;
        [saveSettings setObject:title12 forKey:@"title12"];
    }
    
    if (![text12 isEqualToString:self.queenText.text]){
        text12 = self.queenText.text;
        [saveSettings setObject:text12 forKey:@"text12"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
}
- (IBAction)kingBack:(UIBarButtonItem *)sender {
    NSUserDefaults *saveSettings = [NSUserDefaults new];
    
    if (![title13 isEqualToString:self.kingTitle.text]) {
        title13 = self.kingTitle.text;
        [saveSettings setObject:title13 forKey:@"title13"];
    }
    
    if (![text13 isEqualToString:self.kingText.text]){
        text13 = self.kingText.text;
        [saveSettings setObject:text13 forKey:@"text13"];
    }
    
    [saveSettings synchronize];
    [[self navigationController] popViewControllerAnimated:YES];
    
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


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
