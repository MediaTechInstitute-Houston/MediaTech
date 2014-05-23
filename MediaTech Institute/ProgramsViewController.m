//
//  ProgramsViewController.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/4/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import "ProgramsViewController.h"

@interface ProgramsViewController ()

@end

@implementation ProgramsViewController
@synthesize ProgramsOffered;
@synthesize Classes;
@synthesize Overview;
@synthesize location;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{

     return [mediaTechPrograms count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    

    
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
        if (cell == nil) {
            NSLog(@"Cell Creation");
            cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        }
        cell.textLabel.font=[UIFont fontWithName:@"Academy Engraved LET" size:16];
        //Set Data For each Cell
        cell.textLabel.text = [mediaTechPrograms objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:@"CellLogo.png"];
        //Sub title
        //cell.detailTextLabel.text = [mediaTechPrograms objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
       
    UIColor *altCellColor = [UIColor colorWithRed:239.0f/255.0f green:102.0f/255.00f blue:49.0f/255.00 alpha:1.0f];
    cell.backgroundColor = altCellColor;
    return cell;
}
    

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   /* NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"Courses" ofType:@"plist"];
    mediaTechPrograms = [[NSArray alloc] initWithContentsOfFile:myListPath];
    NSLog(@"%@",mediaTechPrograms);*/
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"Cours" ofType:@"plist"];
    Overview = [[NSDictionary alloc] initWithContentsOfFile:myListPath]  ;
    mediaTechPrograms = [Overview objectForKey:@"Title"];
    
    

    
    NSLog(@"%@",mediaTechPrograms);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Later used iAD
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"bannerview did not receive any banner due to %@", error);}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner{NSLog(@"bannerview was selected");}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave{return willLeave;}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {NSLog(@"banner was loaded");
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    if ([segue.identifier isEqualToString:@"OverviewSegue"] ) {
        //int buttonTag = indexPath;
        OverviewViewController *pvc =[segue destinationViewController];
        NSIndexPath *path = [self.ProgramsOffered indexPathForSelectedRow];
        OverviewViewController *sid = [mediaTechPrograms objectAtIndex:path.row];
        pvc.location = sid;
        
    }
}
 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self performSegueWithIdentifier:@"OverviewSegue" sender:self];
    
}

@end
