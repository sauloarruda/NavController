//
//  PadawanViewController.m
//  NavController
//
//  Created by Saulo Arruda Coelho on 7/4/12.
//  Copyright (c) 2012 Jera. All rights reserved.
//

#import "PadawanViewController.h"

@interface PadawanViewController ()
- (IBAction)saveButtonTapped;

@end

@implementation PadawanViewController

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)saveButtonTapped {
    [self dismissModalViewControllerAnimated:YES];
}
@end
