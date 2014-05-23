//
//  MoodleSite.h
//  MediaTech Institute
//
//  Created by MediaTech Student on 2/21/14.
//  Copyright (c) 2014 MediaTech Institute. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"



@interface MoodleSite : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *MoodleWP;

@property (weak, nonatomic) IBOutlet UIImageView *ReachImage;
@end
