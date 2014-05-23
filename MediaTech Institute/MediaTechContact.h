//
//  MediaTechContact.h
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/28/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MediaTechContact : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray *home;
    NSString *info;
    NSDictionary *root;
    NSDictionary *schoolContact;
    NSArray *generalInfo;
    NSDictionary *Overview;
    NSArray *mediaTechPrograms;
    NSMutableArray *viaSocialMedia;
    
   
}
@property (nonatomic, strong) NSString *location;

@property (weak, nonatomic) IBOutlet UILabel *hey;

@property (weak, nonatomic) IBOutlet UILabel *Phone;


@property (weak, nonatomic) IBOutlet UILabel *Address;

@property (weak, nonatomic) IBOutlet UILabel *Email;

@property (weak, nonatomic) IBOutlet UILabel *Twitter;

@property (weak, nonatomic) IBOutlet UILabel *Facebook;

@property (weak, nonatomic) IBOutlet UILabel *Website;

@property (weak, nonatomic) IBOutlet UILabel *Fax;











@end
