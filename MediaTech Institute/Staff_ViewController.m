//
//  Staff_ViewController.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 4/21/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import "Staff_ViewController.h"

@interface Staff_ViewController ()

@end

@implementation Staff_ViewController
@synthesize location;
@synthesize Label1;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    Label1.text = location;
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
