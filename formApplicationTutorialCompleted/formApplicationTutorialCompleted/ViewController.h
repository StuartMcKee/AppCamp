//
//  ViewController.h
//  formApplicationTutorialCompleted
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//Task 1
@property (weak, nonatomic) IBOutlet UIButton *theButton;
@property (weak, nonatomic) IBOutlet UITextField *theTextField;
@property (weak, nonatomic) IBOutlet UILabel *theLabel;
//Task 2
- (IBAction)generateLabel:(id)sender;

@end
