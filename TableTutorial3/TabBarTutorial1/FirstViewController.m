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
    
    //creating a default database
    People * person = [[People alloc] init];
    person.ID = self.personID.text;
    person.name = @"Stuart";
    person.age = [NSNumber numberWithInt:21];
    person.gender = @"Male";
    person.bio = @"In west Philadelphia born and raised, on the playground where I spent most of my days, chilling out, maxing, relaxing all cool"; 
    [People add: person];
    [self generateID];
    
    People * person2 = [[People alloc] init];
    person2.ID = self.personID.text;
    person2.name = @"Kyle";
    person2.age = [NSNumber numberWithInt:20];
    person2.gender = @"Male";
    person2.bio = @"And all shooting some b-ball outside of the school, when a couple of guys, they were up to no good, started making trouble in my neighbourhood"; 
    [People add: person2];
    [self generateID];
    
    People * person3 = [[People alloc] init];
    person3.ID = self.personID.text;
    person3.name = @"Clare";
    person3.age = [NSNumber numberWithInt:20];
    person3.gender = @"Male";
    person3.bio = @"I got in one little fight and my mom got scared and said, 'you're moving with your auntie and uncle in Bel-air'"; 
    [People add: person3];
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
