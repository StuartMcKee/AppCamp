//
//  SecondViewController.h
//  TabBarTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
@class People;

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *idSearchText;
@property (weak, nonatomic) IBOutlet UILabel *displayName;
@property (weak, nonatomic) IBOutlet UILabel *displayAge;
@property (weak, nonatomic) IBOutlet UILabel *displayGender;


@end
