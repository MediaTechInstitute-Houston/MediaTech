//
//  OverviewViewController.h
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/10/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface OverviewViewController : UIViewController

{
    NSDictionary *Overview;
    NSDictionary *info;
    NSArray *school;
    NSDictionary *Campus1;
}

@property (nonatomic, strong) NSString *location;

@property (weak, nonatomic) IBOutlet UILabel *Course;

@property (weak, nonatomic) IBOutlet UITextView *MAWSInfo;

@property (weak, nonatomic) IBOutlet UILabel *Campus;
@end
