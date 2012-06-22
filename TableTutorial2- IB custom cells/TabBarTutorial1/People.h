//
//  People.h
//  TabBarTutorial1
//
//  Created by A Canning on 18/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@property (nonatomic, copy) NSString * ID;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, copy) NSString * gender;


+ (void)add: (People *)theObject;
+ (People *) getPersonWithID:(NSString*)personID;
+(NSArray*) getNames;
+(void) deletePersonWithName: (NSString*)name;
@end
