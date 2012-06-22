//
//  ViewController.m
//  HelloWorldCompleted
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Task 3
@synthesize myLabel;

//Task 1
@synthesize helloWorld;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Task 1
    self.helloWorld = @"Hello World"; 
    
    NSLog(@"%@",self.helloWorld);
    
    //Task 4
    self.myLabel.text = self.helloWorld;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
