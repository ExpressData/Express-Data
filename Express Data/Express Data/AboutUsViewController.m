//
//  AboutUsViewController.m
//  Express Data
//
//  Created by Sun Aung on 25/05/11.
//  Copyright 2011 Express Data. All rights reserved.
//

#import "AboutUsViewController.h"

#define aboutEDTab 0
#define ourHistoryTab 1


@implementation AboutUsViewController
@synthesize tabBar;

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
    [tabBar release];
    
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
    NSLog(@"About Us Page");
    [self setTitle:@"About Us"];
    
    [self.tabBar setDelegate:self];
    [self.tabBar setSelectedItem:[self.tabBar.items objectAtIndex:0]];
    [self.view insertSubview:aboutED.view atIndex:0];
    
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
   
    switch (item.tag) {
			
			
            
		case aboutEDTab:
		{
			
			[self clearView];
            aboutED.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
			[self.view insertSubview:aboutED.view atIndex:0];		
            
			break;
		}
		case ourHistoryTab:
		{
			
			[self clearView];
			history.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
			[self.view insertSubview:history.view atIndex:0];
			break;
		}	
		default:
			break;
	}
    
}

-(void) clearView {
	if (aboutED.view.superview) {
		[aboutED.view removeFromSuperview];
	} else if (history.view.superview) {
		[history.view removeFromSuperview];
	}
}

- (void)viewDidUnload
{
   
    [aboutED release];
    aboutED = nil;
    [history release];
    history = nil;
    [tabBar release];
    tabBar = nil;
    [self setTabBar:nil];
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{

    return YES;
}

@end
