//
//  ViewController.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 1/10/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
// Updated 16-May-2014

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
//Each one is a specific view!!!
 @synthesize Tour;
 @synthesize Program;
 @synthesize admin;
 @synthesize Moodle;
 @synthesize Staff;
 @synthesize Contacts;
 @synthesize location;

 void createLabel(NSArray *cellindex, NSArray *cellname)
{
    //Loop to create six label in six view!!!
    int n;
    //Multi-Dimensional Array with the x,y,width,&height for each cell label!!!
    int label[6][4] = {
        {16, 34, 89, 21} ,   /*  Take a Tour */
        {20, 34, 66, 21} ,   /*  Program */
        {15, 34, 80, 21} ,   /*  admin*/
        {25, 34, 58, 21} ,   /*  Moodle*/
        {4, 34, 112, 21} ,  /*  Staff*/
        {20, 34, 61, 21} };  /*  Contacts*/

    for (n = 0; n < 6; n++) {
        UILabel *cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(label[n][0] , label[n][1]  , label[n][2],label[n][3] )];
        cellLabel.text = [NSString stringWithFormat:[cellname objectAtIndex: n]];
        [cellLabel setFont:[UIFont systemFontOfSize:14]];
        [[cellindex objectAtIndex: n] addSubview: cellLabel];
        for (n = 1; n < 6; n++) {
            UILabel *cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(label[n][0] , label[n][1]  , label[n][2],label[n][3] )];
            cellLabel.text = [NSString stringWithFormat:[cellname objectAtIndex: n]];
            [cellLabel setFont:[UIFont systemFontOfSize:14]];
            [[cellindex objectAtIndex: n] addSubview: cellLabel];
        }
        
    }
}

-(void)viewDidLoad
 {
     //School name!!!
  home = [NSArray arrayWithObjects:@"Austin", @"Dallas", @"Houston", @"Oceanside",  nil];
     
     //Specific name of the cell that is label!!!
 cellname = [NSArray arrayWithObjects:@"Take a Tour", @"Programs", @"Admissions", @"Moodle", @"Faculty & Staff", @"Contacts", nil];
     
     //Specific name for the view!!!
     cellindex = [NSArray arrayWithObjects:Tour, Program, admin, Moodle, Staff, Contacts, nil];
     
     createLabel(cellindex, cellname);
     
     

 [super viewDidLoad];
 
 
 }
- (void)TourClicked:(UIButton*)heybutton
{
// To perform the Segue with specific identifier!!!
    [self performSegueWithIdentifier:@"Tour" sender:heybutton];
    //[self performSegueWithIdentifier:@"Programs" sender:heybutton];
}
    
    /*
- (void)ProgramClicked:(UIButton*)heybutton
{
    // To perform the Segue with specific identifier!!!(Austin)
    [self performSegueWithIdentifier:@"Program" sender:heybutton];
    //[self performSegueWithIdentifier:@"Programs" sender:heybutton];
}
     
  */



- (void)StaffClicked:(UIButton*)heybutton
{
    // To perform the Segue with specific identifier!!!
    [self performSegueWithIdentifier:@"SF" sender:heybutton];
    //[self performSegueWithIdentifier:@"Programs" sender:heybutton];
    
}



- (IBAction)TourSwipe:(id)sender {
    //Name object for the FOR STATEMENT!!!
    int n;
    
    //Multi-Dimensional Array with the x,y,width!!!
    //Height was given!!!
    int button[4][3] = {
        {29, 3, 43} ,   /* Austin */
        {29, 22, 42} ,   /* Dallas */
        {21, 40, 59} ,   /* Houston */
        {13, 58, 74}    /* Oceanside */
    };
    
    //Specific name of the cell that is label!!!
    cellname = [NSArray arrayWithObjects:@"", @"Programs", @"Admissions", @"Moodle", @"Faculty & Staff", @"Contacts", nil];
    
    
    //Specific name for the view!!!
    cellindex = [NSArray arrayWithObjects:Tour, Program, admin, Moodle, Staff, Contacts, nil];
    
    //To remove previous label!!!
    UIView* subview;
    for (n = 0; n <= 5; n++) {
         while ((subview = [[cellindex[n] subviews] lastObject]) != nil)
        [subview removeFromSuperview];
    }
   
    
    
    /*
    UIView* myViewController = [UIView alloc] init;
    [[self UIViewController] pushViewController:myViewController
    [self.storyboard performseguewithidentifier:@"theIdentifier"];
     [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
     */
    //Function to create multiple label!!!
    createLabel(cellindex, cellname);
    
    //Loop to create four button in Tour view!!!
    for (n = 0; n < 4; n++) {
        
        UIButton *schoolButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [schoolButton setFrame:CGRectMake(button[n][0] , button[n][1]  , button[n][2] , 30)];
        [schoolButton setTitle:[NSString stringWithFormat:[home objectAtIndex:n]] forState:UIControlStateNormal];
        schoolButton.backgroundColor=[UIColor clearColor];
        schoolButton.tintColor=[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
        
        
        //Making indenity for the button!!!
       schoolButton.tag = n;
        
        //Programmatically set UIButton action!!!
        [schoolButton addTarget:self
                action:@selector(TourClicked:)
      forControlEvents:UIControlEventTouchUpInside];
        
        //The button added to the view!!!
        [Tour addSubview:schoolButton];
        [self.view addSubview: Tour];
        
        
    }}

- (IBAction)ProgramSwipe:(id)sender {
  
    [self performSegueWithIdentifier:@"Program" sender:self];
        
}

- (IBAction)adminSwipe:(id)sender{
    [self performSegueWithIdentifier:@"Admins" sender:self];
}
    

- (IBAction)StaffSwipe:(id)sender {
    //Name object for the FOR STATEMENT!!!
    int n;
    
    //Multi-Dimensional Array with the x,y,width!!!
    //Height was given!!!
    int button[4][3] = {
        {29, 3, 43} ,   /* Austin */
        {29, 22, 42} ,   /* Dallas */
        {21, 40, 59} ,   /* Houston */
        {13, 58, 74}    /* Oceanside */
    };
    
    //Specific name of the cell that is label!!!
    cellname = [NSArray arrayWithObjects:@"Take a Tour", @"Programs", @"Admissions", @"Moodle", @"", @"Contacts", nil];
    
    
    
    //Specific name for the view!!!
    cellindex = [NSArray arrayWithObjects:Tour, Program, admin, Moodle, Staff, Contacts, nil];
    
    //To remove previous label!!!
    UIView* subview;
    for (n = 0; n <= 5; n++) {
        while ((subview = [[cellindex[n] subviews] lastObject]) != nil)
            [subview removeFromSuperview];
    }

    
    
    /*
     UIView* myViewController = [UIView alloc] init;
     [[self UIViewController] pushViewController:myViewController
     [self.storyboard performseguewithidentifier:@"theIdentifier"];
     [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
     */
    //Function to create multiple label!!!
    createLabel(cellindex, cellname);
    
    //Loop to create four button in admin view!!!
    for (n = 0; n < 4; n++) {
        
        UIButton *schoolButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [schoolButton setFrame:CGRectMake(button[n][0] , button[n][1]  , button[n][2] , 30)];
        [schoolButton setTitle:[NSString stringWithFormat:[home objectAtIndex:n]] forState:UIControlStateNormal];
        schoolButton.backgroundColor=[UIColor clearColor];
        schoolButton.tintColor=[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
        
        
        //Making indenity for the button!!!
        schoolButton.tag = n;
        
        //Programmatically set UIButton action!!!
        [schoolButton addTarget:self
                         action:@selector(StaffClicked:)
               forControlEvents:UIControlEventTouchUpInside];
        
        //The button added to the view!!!
        [Staff addSubview:schoolButton];
        [self.view addSubview: Staff];
        
        
    }
    

}

- (IBAction)ContactSwipe:(id)sender {
    [self performSegueWithIdentifier:@"Contacts" sender:self];
}

- (IBAction)MoodleSwipe:(id)sender {
    [self performSegueWithIdentifier:@"Moodle" sender:self];
    
}






- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"Tour"] ) {
        int buttonTag = [sender tag];
        SecondViewController *svc =[segue destinationViewController];
         SecondViewController *sid = [home objectAtIndex:buttonTag];
        svc.location = sid;
    
    }
    /*
    if ([segue.identifier isEqualToString:@"Program"] ) {
        int buttonTag = [sender tag];
        SecondViewController *svc =[segue destinationViewController];
        PassData *sid = [home objectAtIndex:buttonTag];
        svc.locationName = sid;
        
    }
     */
  
    if ([segue.identifier isEqualToString:@"SF"] ) {
        int buttonTag = [sender tag];
        Staff_ViewController *svc =[segue destinationViewController];
         Staff_ViewController *sid = [home objectAtIndex:buttonTag];
        svc.location = sid;
        
    }
    

}
@end
