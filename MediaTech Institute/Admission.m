//
//  Admission.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 4/16/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import "Admission.h"
#import "Reachability.h"
@interface Admission ()

@end

@implementation Admission
@synthesize Admin;
@synthesize ReachImage;


- (void)viewDidLoad
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];
    
    NetworkStatus status = [reach currentReachabilityStatus];
    
    if (status == NotReachable) {
        ReachImage.image = [UIImage imageNamed:@"Connection Check.png"];
    } else {
        NSURL *url = [NSURL URLWithString:@"http://mediatech.edu/admissions"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [Admin loadRequest:req];
    }
    

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
