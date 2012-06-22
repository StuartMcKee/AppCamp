//
//  DetailViewController.m
//  TableTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize person;
@synthesize bioLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil title:(NSString*)name
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
        self.person = [People getPersonWithName:name];
        self.title = name; //set the title of the Navigation View Controller
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

  
    self.bioLabel.text = self.person.bio;
    self.bioLabel.numberOfLines = 0;//defaults to infinity
    [self.bioLabel sizeToFit];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setBioLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
