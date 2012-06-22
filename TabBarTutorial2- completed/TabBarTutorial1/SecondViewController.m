//
//  SecondViewController.m
//  TabBarTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize displayAge,displayName,displayGender, idSearchText;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
					


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.idSearchText) { //if the textField is your text field
        [textField resignFirstResponder]; //dismisses the keyboard
        [self showPerson];
    }
    return NO;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    

    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)showPerson{
    People * person = [People getPersonWithID:self.idSearchText.text];
    
    if(person == nil){
        NSLog(@"No person with that ID found");
        self.displayAge.text = @"Not found";
        self.displayName.text = @"Not found";
        self.displayGender.text = @"Not found";
    }
    else{
        self.displayAge.text = [NSString stringWithFormat:@"%@",person.age];
        self.displayName.text = person.name;
        self.displayGender.text = person.gender;
    }
    
}


- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
