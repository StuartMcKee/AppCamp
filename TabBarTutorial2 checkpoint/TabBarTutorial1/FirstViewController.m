//
//  FirstViewController.m
//  TabBarTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize personName,personID, personAge, count, numberFormatter;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.count = 0;
    
    [self generateID];
    
    self.numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterNoStyle];
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.personAge) { //if the textField is your text field
        [textField resignFirstResponder]; //dismisses the keyboard
    }
    else if (textField == self.personName) { //if the textField is your text field
        [textField resignFirstResponder]; //dismisses the keyboard
    }
    return NO;
}

-(void)generateID{
    
    self.count++;
    self.personID.text = [NSString stringWithFormat:@"E%i", self.count];
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    [self setPersonID:nil];
    [self setPersonName:nil];
    [self setPersonAge:nil];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)addNewPersonMale:(id)sender {
    
    People * person = [[People alloc] init];
    
    if((self.personName.text != @"")&&(self.personName.text !=@"")){
        person.ID = self.personID.text;
        person.name = self.personName.text;
        person.age = [self.numberFormatter numberFromString:self.personAge.text];
        person.gender = @"Male";
    
        [People add: person];
    
        [self generateID];
        
    }
    else NSLog(@"No data entered!");
    
}

- (IBAction)addNewPersonFemale:(id)sender {
    
    People * person = [[People alloc] init];
    
    if((self.personName.text != @"")&&(self.personName.text !=@"")){
        person.ID = self.personID.text;
        person.name = self.personName.text;
        person.age = [self.numberFormatter numberFromString:self.personAge.text];
        person.gender = @"Female";
    
        [People add: person];
    
        [self generateID];
    }
    else NSLog(@"No data entered!");
}

@end
