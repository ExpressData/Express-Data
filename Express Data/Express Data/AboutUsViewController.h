//
//  AboutUsViewController.h
//  Express Data
//
//  Created by Sun Aung on 25/05/11.
//  Copyright 2011 Express Data. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AboutUsViewController : UIViewController <UITabBarDelegate> {
    
    IBOutlet UIViewController *aboutED;
    IBOutlet UIViewController *history;
    IBOutlet UITabBar *tabBar;
    
}

@property(nonatomic, retain) IBOutlet UIViewController *aboutED;
@property(nonatomic, retain) IBOutlet UIViewController *history;


@end
