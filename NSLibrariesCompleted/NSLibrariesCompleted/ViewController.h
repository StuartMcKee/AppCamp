//
//  ViewController.h
//  NSLibrariesCompleted
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Task 1
@property (nonatomic, copy) NSString * aString;
@property (nonatomic, retain) NSNumber * aNumber;
@property (nonatomic, retain) NSDate * aDate;
@property (nonatomic, retain) NSData *someData;
@property (nonatomic, retain) NSArray *anArray;
//Task 6
@property (nonatomic, retain) NSDictionary *aDictionary;


//What is method prototyping?
-(void)combineThisString:(NSString*)firstString withThisString:(NSString*)secondString;
@end
