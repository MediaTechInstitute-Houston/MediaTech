//
//  ViewController.h
//  MediaTech Institute
//
//  Created by MediaTech Student on 1/10/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "Staff_ViewController.h"



@interface ViewController :
UIViewController
{
    NSArray *home;
    NSArray *button;
    NSArray *cellname;
    NSArray *cellindex;
}
@property (weak, nonatomic) IBOutlet UIView *Tour;
@property (weak, nonatomic) IBOutlet UIView *Program;
@property (weak, nonatomic) IBOutlet UIView *admin;
@property (weak, nonatomic) IBOutlet UIView *Moodle;
@property (weak, nonatomic) IBOutlet UIView *Staff;
@property (weak, nonatomic) IBOutlet UIView *Contacts;
- (IBAction)TourSwipe:(id)sender;
- (IBAction)ProgramSwipe:(id)sender;
- (IBAction)adminSwipe:(id)sender;
- (IBAction)StaffSwipe:(id)sender;
- (IBAction)ContactSwipe:(id)sender;
- (IBAction)MoodleSwipe:(id)sender;
@property (nonatomic, strong) NSString *location;





@end
