//
//  Person.h
//  PersonClass
//
//  Created by Piotr Mlynarski on 21.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    Male, Female
} Gender;

@interface Person : NSObject {
    NSString *name;
    NSNumber *age;
    Gender gender;
}

@property NSString * name;
@property NSNumber * age;
@property Gender gender;

-(id)initWithName:(NSString *)_name
              age:(NSNumber *)_age
           gender:(Gender)_gender;

@end
