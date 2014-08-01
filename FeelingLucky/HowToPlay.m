//
//  HowToPlay.m
//  FeelingLucky
//
//  Created by Elias Haroun on 2014-03-10.
//  Copyright (c) 2014 EliSoft. All rights reserved.
//

#import "HowToPlay.h"
#import "MainMenu.h"

@interface HowToPlay ()

@property (strong, nonatomic) IBOutlet UITableView *rulesTableView;
@property (strong, nonatomic) IBOutlet ADBannerView *bannerView;


@property BOOL viewAppeared;

@end

@implementation HowToPlay

NSArray *tableData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.rulesTableView = [UITableView new];
    
    self.rulesTableView.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"bg.png"]];
}


- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.viewAppeared = YES;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    if (!self.viewAppeared)
        [[self navigationController] setNavigationBarHidden:NO animated:YES];
    else
        [[self navigationController] setNavigationBarHidden:NO];
    
    [[self navigationController] setToolbarHidden:YES];
    
    // Initialize table data
    tableData = [NSArray arrayWithObjects:@"Ace",@"Two",@"Three",@"Four",@"Five",@"Six",@"Seven",@"Eight",@"Nine",@"Ten",@"Jack",@"Queen",@"King", nil];
}


// TableView methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [self.rulesTableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    
    switch (row) {
        case 0:
            [self performSegueWithIdentifier:@"ace" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"two" sender:self];
            
            break;
        case 2:
            [self performSegueWithIdentifier:@"three" sender:self];
            
            break;
        case 3:
            [self performSegueWithIdentifier:@"four" sender:self];
            
            break;
        case 4:
            [self performSegueWithIdentifier:@"five" sender:self];
            
            break;
        case 5:
            [self performSegueWithIdentifier:@"six" sender:self];
            
            break;
        case 6:
            [self performSegueWithIdentifier:@"seven" sender:self];
            
            break;
        case 7:
            [self performSegueWithIdentifier:@"eight" sender:self];
            
            break;
        case 8:
            [self performSegueWithIdentifier:@"nine" sender:self];
            
            break;
        case 9:
            [self performSegueWithIdentifier:@"ten" sender:self];
            
            break;
        case 10:
            [self performSegueWithIdentifier:@"jack" sender:self];
            
            break;
        case 11:
            [self performSegueWithIdentifier:@"queen" sender:self];
            
            break;
        case 12:
            [self performSegueWithIdentifier:@"king" sender:self];
            
            break;
            
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

- (IBAction)back:(UIBarButtonItem *)sender {
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)default:(UIButton *)sender {
    
    // Assign default values to golbal variables
    [self assignDefaultRules];
    
    // Save changed data
    [self saveRules];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
