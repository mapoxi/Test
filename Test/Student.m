//
//  Student.m
//  PersonClass
//
//  Created by Piotr Mlynarski on 22.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)initWithName:(NSString *)_name
               age:(NSNumber *)_age
            gender:(Gender)_gender
           classes:(NSArray *)_classes
   numberOfCredits:(NSNumber *)_numberOfCredits
             major:(NSString *)_major
{
    if ((self = [super init])) {
        name = _name;
        age = _age;
        gender = _gender;
        classes = _classes;
        numberOfCredits = _numberOfCredits;
        major = _major;
    }
    return self;
}

- (NSString *)name
{
    if(name) {
        return name;
    }
    return @"--nieznane--";
}

- (NSNumber *)age
{
    if(age) {
        return age;
    }
    return [NSNumber numberWithInt:-1];
}

- (Gender)gender
{
    if(gender){
        return gender;
    }
    return -1;
}

- (void)setName:(NSString *)_name
{
    name = _name;
}

- (void)setAge:(NSNumber *)_age
{
    age = _age;
}

- (void)setGender:(Gender)_gender
{
    gender = _gender;
}

-(NSString *)description
{
    if (gender == Male){
        return [NSString stringWithFormat:@"Cześć, jestem mężczyzną, mam na imię %@, a mój wiek to %@ lat", name, age];
    } else {
        return [NSString stringWithFormat:@"Cześć, jestem kobietą, mam na imię %@ a mój wiek to %@", name, age];
    }
}

-(NSString *)description2
{
    if(gender == Male) {
        return [NSString stringWithFormat:
                @"%@. Jestem mężczyzną, aktualnie studiuję %@, "
                "mam %@ przedmiotów na kierunku %@",
                [super description], classes, numberOfCredits, major];
    } else {
        return [NSString stringWithFormat:
                @"%@. Jestem kobietą, aktualnie studiuję %@ "
                "mam %@ przedmiotów na kierunku %@",
                [super description], classes, numberOfCredits, major];
    }
}





@end
