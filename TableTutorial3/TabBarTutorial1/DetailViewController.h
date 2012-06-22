//
//  DetailViewController.h
//  TableTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
@class People;

@interface DetailViewController : UIViewController

@property (nonatomic, retain) People*person;


@property (weak, nonatomic) IBOutlet UILabel *bioLabel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil title:(NSString*)name;
@end
