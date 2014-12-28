//
//  Teacher.m
//  PersonClass
//
//  Created by Piotr Mlynarski on 22.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (id)initWithName:(NSString *)name
               age:(NSNumber *)age
            gender:(Gender)gender
           classes:(NSArray *)classes
            salary:(NSNumber *)salary
   areaOfExpertise:(NSString *)areaOfExpertise
{
    if ((self = [super init])) {
        self.name = name;
        self.age = age;
        self.gender = gender;
        _classes = classes;
        _salary = salary;
        _areaOfExpertise = areaOfExpertise;
    }
    return self;
}

- (NSString *)description
{
    if(self.gender == Male) {
        return [NSString stringWithFormat:@"%@. Jestem mężczyzną aktualnie nauczającym %@ " "za $%@ rocznie z doświadczeniem z zakresu %@", [super description], _classes, _salary, _areaOfExpertise];
    } else {
        return [NSString stringWithFormat:@"%@. Jestem kobietą aktualnie nauczającą %@ " "za $%@ rocznie z doświadczeniem z zakresu %@", [super description], _classes, _salary, _areaOfExpertise];
    }
}

@end