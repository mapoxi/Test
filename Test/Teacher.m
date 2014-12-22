//
//  Teacher.m
//  PersonClass
//
//  Created by Piotr Mlynarski on 22.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (id)initWithName:(NSString *)_name
               age:(NSNumber *)_age
            gender:(Gender)_gender
           classes:(NSArray *)_classes
            salary:(NSNumber *)_salary
   areaOfExpertise:(NSString *)_areaOfExpertise
{
    if ((self = [super init])) {
        name = _name;
        age = _age;
        gender = _gender;
        classes = _classes;
        salary = _salary;
        areaOfExpertise = _areaOfExpertise;
    }
    return self;
}

- (NSString *)description
{
    if(gender == Male) {
        return [NSString stringWithFormat:@"%@. Jestem mężczyzną aktualnie nauczającym %@ " "za $%@ rocznie z doświadczeniem z zakresu %@", [super description], classes, salary, areaOfExpertise];
    } else {
        return [NSString stringWithFormat:@"%@. Jestem kobietą aktualnie nauczającą %@ " "za $%@ rocznie z doświadczeniem z zakresu %@", [super description], classes, salary, areaOfExpertise];
    }
}

@end