//
//  BlogViewer.m
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-03-10.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import "BlogViewer.h"

@interface BlogViewer ()
@property (strong, nonatomic, readwrite) IBOutlet UIWebView *webView;

@end

@implementation BlogViewer

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    [[self navigationController] setToolbarHidden:YES];
    
    
    NSString *blogURL = @"http://myiosapp.tumblr.com";
    NSURL *url = [NSURL URLWithString:blogURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
}

- (IBAction)backToMenu:(UIBarButtonItem *)sender {
    [[self navigationController] popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
