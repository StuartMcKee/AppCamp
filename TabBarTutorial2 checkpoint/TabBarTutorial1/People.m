//
//  People.m
//  TabBarTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "People.h"

@implementation People
@synthesize age, name, ID, gender;

//static declarations give scope to the whole class, we don't to use properties //here as that would be adding information to our People object
static NSMutableArray *allPeople;

+ (NSArray *) getAll {
    return allPeople;
}//When called this class method returns the entire array 

+ (void)add: (People *)theObject{
    
    
	if ([allPeople count] ==0) {
        allPeople = [[NSMutableArray alloc] init];
    }
    
    [allPeople addObject:theObject];
    
    
}//When creating a new person this class method is called, where the object is stored in our array


@end
