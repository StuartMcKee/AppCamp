//
//  ViewController.m
//  formApplicationTutorialCompleted
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize theButton;
@synthesize theTextField;
@synthesize theLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.theTextField) { //if the textField is your text field
        [textField resignFirstResponder]; //dismisses the keyboard
    }
    return NO;
}

- (void)viewDidUnload
{
    [self setTheTextField:nil];
    [self setTheButton:nil];
    [self setTheLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//Task 4
- (IBAction)generateLabel:(id)sender {
    self.theLabel.text = self.theTextField.text;
}
@end
