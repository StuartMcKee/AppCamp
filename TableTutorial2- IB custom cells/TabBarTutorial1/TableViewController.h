//
//  TableViewController.h
//  TableTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
#import "CustomCell.h"
@class People;
@interface TableViewController : UITableViewController

@property (nonatomic, retain) IBOutlet CustomCell *customCell;
@property (nonatomic, retain) NSMutableArray * namesList;
@end
