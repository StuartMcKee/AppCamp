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
    NSArray * allPeople = [NSArray arrayWithArray:[People getAll]];
    for (People*person in allPeople) {
        NSLog(@"person:%@",person.ID);
        NSLog(@"text:%@", self.idSearchText.text);
        if ([person.ID isEqualToString:self.idSearchText.text]) {
            self.displayName.text = person.name;
            self.displayAge.text = [NSString stringWithFormat:@"%@",person.age];
            self.displayGender.text = person.gender;
        }
        else NSLog(@"No person with that ID found");
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
