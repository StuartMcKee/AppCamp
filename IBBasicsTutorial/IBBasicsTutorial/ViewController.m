//
//  ViewController.m
//  IBBasicsTutorial
//
//  Created by A Canning on 13/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myImage;
@synthesize myLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Task 3
    self.myImage.image = [UIImage imageNamed:@"windFarm.jpg"];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyImage:nil];
    [self setMyLabel:nil];
    [super viewDidUnload];
    
    
    
    
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
