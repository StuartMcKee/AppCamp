//
//  ViewController.h
//  formApplicationTutorial
//
//  Created by A Canning on 11/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    
    int selected;
    
    //git hub upload changes test
}
@property(nonatomic) int selected;
@property(nonatomic,retain) NSNumber*firstNumber;
@property(nonatomic,retain) NSNumber*secondNumber;
@property(nonatomic, retain)NSNumberFormatter *numberFormatter;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;


@property (weak, nonatomic) IBOutlet UIButton *clearButton;
- (IBAction)clear:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *equalsButton;
- (IBAction)equals:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
- (IBAction)seven:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
- (IBAction)eight:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;
- (IBAction)nine:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
- (IBAction)plus:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;
- (IBAction)four:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
- (IBAction)five:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *sixButton;
- (IBAction)six:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;
- (IBAction)minus:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *oneButton;
- (IBAction)one:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
- (IBAction)two:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
- (IBAction)three:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *divideButton;
- (IBAction)divide:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
- (IBAction)zero:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;
- (IBAction)multiply:(id)sender;

@end
