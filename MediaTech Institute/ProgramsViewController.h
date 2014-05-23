//
//  ProgramsViewController.h
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/4/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "OverviewViewController.h"


@interface ProgramsViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *mediaTechPrograms;
    NSDictionary *overall;
}
@property (weak, nonatomic) IBOutlet UITableView *ProgramsOffered;
@property (nonatomic, strong) NSDictionary *Classes;
@property (nonatomic, strong) NSDictionary *Overview;
@property (nonatomic, strong) NSString *location;
@end
