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

//static declarations give scope to the whole class, we don't to use properties 
//here as that would be adding information to our People object
static NSMutableArray *allPeople;

+ (People *) getPersonWithID:(NSString*)personID {
    
    People * person = [[People alloc] init];
    
    for (person in allPeople) {
        if ([person.ID isEqualToString:personID]) return person;
        
    }
    return nil;
}

+(NSArray*) getNames{
    
    People * person = [[People alloc] init];
    NSMutableArray * namesList = [[NSMutableArray alloc] init];
    for(person in allPeople) [namesList addObject:person.name];
    return namesList;
}

+(void) deletePersonWithName: (NSString*)name{
    
    People * person = [[People alloc] init];
    int count = 0;
    for(person in allPeople) 
    {
        if ([person.name isEqualToString:name]) {
            [allPeople removeObjectAtIndex:count];
            break; //without this the for loop will continue and throw "array is was modified while being enumerated" error
        }
        count++;
    }
}

+ (void)add: (People *)theObject{
    
    
	if ([allPeople count] ==0) {
        allPeople = [[NSMutableArray alloc] init];
    }
    
    [allPeople addObject:theObject];
    
    
}//When creating a new person this class method is called, where the object is stored in our array


@end
