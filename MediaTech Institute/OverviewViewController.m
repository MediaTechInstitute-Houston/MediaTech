//
//  OverviewViewController.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/10/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import "OverviewViewController.h"

@interface OverviewViewController ()

@end

@implementation OverviewViewController
@synthesize Course;
@synthesize location;
@synthesize MAWSInfo;
@synthesize Campus;
- (void)viewDidLoad
{
    [Course setText:location];
    if ([location  isEqual: @"Mobile Application Developement"] ) {
        location = @"Mobile";
        
    }
    
    if ([location  isEqual: @"Recording Arts"] ) {
        location = @"Recording";
    }
    
    if ([location  isEqual: @"Film Production"] ) {
        location = @"Film";
    }
    
    if ([location  isEqual: @"Animation & Graphics"] ) {
        location = @"Animation";
    }
    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"Cours" ofType:@"plist"];
    Overview = [[NSDictionary alloc] initWithContentsOfFile:myListPath];
    info = [[Overview objectForKey:@"Overview"] objectForKey:location];
    
    
    Campus1 = [[NSDictionary alloc] initWithContentsOfFile:myListPath]  ;
    school = [Campus1 objectForKey:@"Campus"];

    NSString *sec1 = school[0];
    NSString *sec2 = school[1];
    NSString *sec3 = school[2];
    NSString *sec4 = school[3];
    
    
    [MAWSInfo setText:info];
    if ([location  isEqual: @"Mobile"] ) {
        [Campus setText:[NSString stringWithFormat:@"%@", sec1]];
    }
    
    if ([location  isEqual: @"Recording"] ) {
        [Campus setText:[NSString stringWithFormat:@"%@", sec2]];
    }
    
    if ([location  isEqual: @"Film"] ) {
        [Campus setText:[NSString stringWithFormat:@"%@", sec3]];
    }
    
    if ([location  isEqual: @"Animation"] ) {
        [Campus setText:[NSString stringWithFormat:@"%@", sec4]];
    }
    NSLog(@"%@",info);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
