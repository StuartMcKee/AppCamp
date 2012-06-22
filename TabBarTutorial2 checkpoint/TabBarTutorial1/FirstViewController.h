//
//  FirstViewController.h
//  TabBarTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
@class People;
@interface FirstViewController : UIViewController

@property (nonatomic, retain) NSNumberFormatter *numberFormatter;
@property (weak, nonatomic) IBOutlet UILabel *personID;
@property (weak, nonatomic) IBOutlet UITextField *personName;
@property (weak, nonatomic) IBOutlet UITextField *personAge;
@property int count;
-(void)generateID;
- (IBAction)addNewPersonMale:(id)sender;
- (IBAction)addNewPersonFemale:(id)sender;


@end
