//
//  Person.h
//  PersonClass
//
//  Created by Piotr Mlynarski on 21.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum {
    Male, Female
} Gender;

@interface Person : NSObject

@property(nonatomic) NSString * name;
@property(nonatomic) NSNumber * age;
@property(nonatomic) Gender gender;

-(id)initWithName:(NSString *)_name
              age:(NSNumber *)_age
           gender:(Gender)_gender;

@end
