//
//  MediaTechContact.m
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/28/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import "MediaTechContact.h"

@interface MediaTechContact ()

@end

@implementation MediaTechContact
@synthesize location;
@synthesize hey;
@synthesize Phone;
@synthesize Email;
@synthesize Address;
@synthesize Twitter;
@synthesize Facebook;
@synthesize Website;
@synthesize Fax;


- (void)viewDidLoad
{
   //Path to the PList!!
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"Cours" ofType:@"plist"];
    
    //Storing the ROOT dictionary from myListPath!!!
    root = [[NSDictionary alloc] initWithContentsOfFile:myListPath];
    
    //Accessing the Keyword INFORMATION from the ROOT dictionary!!!
    schoolContact = [root objectForKey:@"Information"];
    
    //Location is school name for pass data!!!
    //Accessing the Keyword location (Austin,Dallas, Houston, Oceanside) to pull designated array!!!
    generalInfo = [schoolContact objectForKey:location];
    
    //Check to see if the process work
    //NSLog(@"%@", generalInfo);
    
    NSString *phoneReach = [[NSString alloc]initWithFormat:@"Phone: %@", [generalInfo objectAtIndex:0]];
    NSString *emailReach = [[NSString alloc]initWithFormat:@"Campus Email: %@", [generalInfo objectAtIndex:2]];
    
    //Accessing the array & setting the text!!!
    Phone.text = phoneReach;
    Address.text = [generalInfo objectAtIndex:1];
    Email.text = emailReach;
    Twitter.text = [generalInfo objectAtIndex:3];
    Facebook.text = [generalInfo objectAtIndex:4];
    Website.text = [generalInfo objectAtIndex:5];
    
    
    //These campus only have FAX#!!!
    if ([location isEqualToString:@"Dallas"] || [location isEqualToString:@"Oceanside"]) {
        NSString *faxReach = [[NSString alloc]initWithFormat:@"Fax: %@", [generalInfo objectAtIndex:6]];

        Fax.text = faxReach;
        
        
    }

    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //School name!!!
    home = [NSArray arrayWithObjects:@"Choose One", @"Austin", @"Dallas", @"Houston", @"Oceanside",  nil];
    hey.text= location;
   
   viaSocialMedia = [[NSMutableArray alloc] init];
    
}

    
    
    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;

{
     return [home count];
}
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor blackColor];
    label.textColor = [UIColor colorWithRed:239.0f/255.0f green:102.0f/255.00f blue:49.0f/255.00 alpha:1.0f];
    label.textAlignment = UITextAlignmentCenter;
    label.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:34];
    label.text = [home objectAtIndex:row];
    return label;
}
-(void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
     location = [home objectAtIndex:row];
     [self performSegueWithIdentifier:@"MediaTechContacts" sender:self.location];
    
    //NSLog(@"Selecte %@", info);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"MediaTechContacts"] ) {
        //int buttonTag = indexPath;
        MediaTechContact *pvc =[segue destinationViewController];
        //MediaTechContact *sid =[home objectAtIndex:row];
        pvc.location = sender;
    }
}





@end
