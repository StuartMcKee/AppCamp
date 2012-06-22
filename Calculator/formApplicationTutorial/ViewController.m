//
//  ViewController.m
//  formApplicationTutorial
//
//  Created by A Canning on 11/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize multiplyButton;
@synthesize zeroButton;
@synthesize divideButton;
@synthesize threeButton;
@synthesize twoButton;
@synthesize oneButton;
@synthesize minusButton;
@synthesize sixButton;
@synthesize fiveButton;
@synthesize fourButton;
@synthesize plusButton;
@synthesize nineButton;
@synthesize eightButton;
@synthesize sevenButton;
@synthesize equalsButton,selected;

@synthesize clearButton;

@synthesize myLabel;
@synthesize firstNumber, secondNumber, numberFormatter;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     self.numberFormatter = [[NSNumberFormatter alloc] init];
    [self.numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)viewDidUnload
{
    [self setMyLabel:nil];

    [self setClearButton:nil];
    [self setEqualsButton:nil];
    [self setSevenButton:nil];
    [self setEightButton:nil];
    [self setNineButton:nil];
    [self setPlusButton:nil];
    [self setFourButton:nil];
    [self setFiveButton:nil];
    [self setSixButton:nil];
    [self setMinusButton:nil];
    [self setOneButton:nil];
    [self setTwoButton:nil];
    [self setThreeButton:nil];
    [self setDivideButton:nil];
    [self setZeroButton:nil];
    [self setMultiplyButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)clear:(id)sender {
    myLabel.text = @"";
}
- (IBAction)equals:(id)sender {
    self.secondNumber = [numberFormatter numberFromString:self.myLabel.text];
    
    NSNumber *total = [[NSNumber alloc] init];
    switch (self.selected) {
        case 1:
        {
            total = [NSNumber numberWithFloat:([firstNumber floatValue] + [secondNumber floatValue])];
        }
            break;
        case 2:
        {
            total = [NSNumber numberWithFloat:([firstNumber floatValue] * [secondNumber floatValue])];
        }
            break;
        case 3:
        {
            total = [NSNumber numberWithFloat:([firstNumber floatValue] / [secondNumber floatValue])];
        }
            break;
        case 4:
        {
            total = [NSNumber numberWithFloat:([firstNumber floatValue] - [secondNumber floatValue])];
        }
            break;
            
        default:
            break;
    }
    
    self.myLabel.text = [NSString stringWithFormat:@"%@",total];
    
}
- (IBAction)seven:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@7",self.myLabel.text];
}
- (IBAction)eight:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@8",self.myLabel.text];
}
- (IBAction)nine:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@9",self.myLabel.text];
}
- (IBAction)plus:(id)sender {
    self.firstNumber = [numberFormatter numberFromString:self.myLabel.text];
    myLabel.text = @"";
    self.selected = 1;
    
}
- (IBAction)four:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@4",self.myLabel.text];
}
- (IBAction)five:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@5",self.myLabel.text];
}
- (IBAction)six:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@6",self.myLabel.text];
}
- (IBAction)minus:(id)sender {
    self.firstNumber = [numberFormatter numberFromString:self.myLabel.text];
    myLabel.text = @"";
    self.selected = 4;
}
- (IBAction)one:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@1",self.myLabel.text];
}
- (IBAction)two:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@2",self.myLabel.text];
}
- (IBAction)three:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@3",self.myLabel.text];
}
- (IBAction)divide:(id)sender {
    self.firstNumber = [numberFormatter numberFromString:self.myLabel.text];
    myLabel.text = @"";
    self.selected = 3;
}
- (IBAction)zero:(id)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%@0",self.myLabel.text];
}
- (IBAction)multiply:(id)sender {
    self.firstNumber = [numberFormatter numberFromString:self.myLabel.text];
    myLabel.text = @"";
    self.selected = 2;
}
@end
