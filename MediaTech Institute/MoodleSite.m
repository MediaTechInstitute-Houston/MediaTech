//
//  MoodleSite.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/21/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import "MoodleSite.h"

@interface MoodleSite ()

@end

@implementation MoodleSite
@synthesize MoodleWP;
@synthesize ReachImage;



- (void)viewDidLoad
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];
    
    NetworkStatus status = [reach currentReachabilityStatus];
    
    if (status == NotReachable) {
        ReachImage.image = [UIImage imageNamed:@"Connection Check.png"];
    } else {
        NSURL *url = [NSURL URLWithString:@"http://moodle.mediatech.edu/login/index.php"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [MoodleWP loadRequest:req];
    }
    
  
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
