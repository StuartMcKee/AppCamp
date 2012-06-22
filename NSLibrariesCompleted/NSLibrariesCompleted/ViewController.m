//
//  ViewController.m
//  NSLibrariesCompleted
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize aDate,anArray,aNumber,aString,someData; //Task 1
@synthesize aDictionary;//Task 6

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Task 2
    self.aString = [[NSString alloc] init];
    self.aNumber = [[NSNumber alloc] init];
    self.aDate = [NSDate date];
    self.someData = [[NSData alloc] init];
    self.anArray = [[NSArray alloc] initWithObjects:@"The Objects In An",@"Array Need To Be",@"Added At Initialisation", nil];
    
    self.aString = @"Hello World";
    
    NSLog(@"%@",self.aString);
    
    //Task 3
    self.aNumber = [NSNumber numberWithInt:2];
    
    NSLog(@"%@",self.aNumber);
    NSLog(@"%@",self.aDate);
    
    //Task 4
    self.someData = (NSData*)@"This is how we cast from one data type to another";
    
    self.aString = (NSString*)self.someData;
    
    NSLog(@"%@",self.aString);
    
    //Task 5
    NSArray * keys = [NSArray arrayWithObjects:@"first",@"second",@"third", nil];
    
    NSLog(@"%@, %@, %@",[keys objectAtIndex:0], [keys objectAtIndex:1], [keys objectAtIndex:2]);
    
    //Challenge
    for(NSString*stringToHoldArrayValue in keys)
    {
        NSLog(@"%@",stringToHoldArrayValue);
    }
    
    //Task 6
    self.aDictionary = [[NSDictionary alloc] initWithObjects:self.anArray forKeys:keys];
    
    NSLog(@"%@",[self.aDictionary objectForKey:@"first"]);
    
    //Task 7
    NSLog(@"Using an NSNumber in an NSString: %@", [NSString stringWithFormat:@"String-ception level: %@", self.aNumber]);
    
    //Task 8 
    NSNumber * firstNumber = [NSNumber numberWithFloat:5.2];
    NSNumber * secondNumber = [NSNumber numberWithInt:4];
    
    NSLog(@"%f",([firstNumber floatValue] + [secondNumber floatValue]));
    
    //Task 9
    
    int anInt = 5;
    double aDouble = 3.0;
    float aFloat = 3.4;
    
    NSLog(@"%i, %f, %f",anInt, aDouble, aFloat);
    
    //Task 10
    [self combineThisString:@"My favourite number is: " withThisString:[NSString stringWithFormat:@"%@",self.aNumber]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

//Task 10
-(void)combineThisString:(NSString*)firstString withThisString:(NSString*)secondString
{
    NSLog(@"%@%@", firstString, secondString);
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
