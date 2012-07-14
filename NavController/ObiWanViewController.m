//
//  ObiWanViewController.m
//  NavController
//
//  Created by Saulo Arruda Coelho on 7/4/12.
//  Copyright (c) 2012 Jera. All rights reserved.
//

#import "ObiWanViewController.h"

@interface ObiWanViewController ()

@end

@implementation ObiWanViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    NSString* oldValue = self.navigationController.tabBarItem.badgeValue;
    if ([@"" isEqualToString:oldValue]) oldValue = @"0";
    self.navigationController.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d", [oldValue intValue] + 1];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        return YES;
    }
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - UISplitViewDelegate methods

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
}


@end
