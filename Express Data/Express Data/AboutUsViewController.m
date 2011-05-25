//
//  AboutUsViewController.m
//  Express Data
//
//  Created by Sun Aung on 25/05/11.
//  Copyright 2011 Express Data. All rights reserved.
//

#import "AboutUsViewController.h"


@implementation AboutUsViewController

@synthesize aboutED,history;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [aboutED release];
    [history release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setTitle:@"About Us"];
    [self.view addSubview:aboutED.view];
}

- (void)viewDidUnload
{
    [aboutED release];
    aboutED = nil;
    [history release];
    history = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{

    return YES;
}

@end
