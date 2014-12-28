//
//  Student.m
//  PersonClass
//
//  Created by Piotr Mlynarski on 22.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)initWithName:(NSString *)name
               age:(NSNumber *)age
            gender:(Gender)gender
           classes:(NSArray *)classes
   numberOfCredits:(NSNumber *)numberOfCredits
             major:(NSString *)major
{
    if ((self = [super init])) {
        self.name = name;
        self.age = age;
        self.gender = gender;
        _classes = classes;
        _numberOfCredits = numberOfCredits;
        _major = major;
    }
    return self;
}

- (NSString *)name
{
    if(self.name) {
        return self.name;
    }
    return @"--nieznane--";
}

- (NSNumber *)age
{
    if(self.age) {
        return self.age;
    }
    return [NSNumber numberWithInt:-1];
}

- (Gender)gender
{
    if(self.gender){
        return self.gender;
    }
    return -1;
}


-(NSString *)description3
{
    if (self.gender == Male){
        return [NSString stringWithFormat:@"Cześć, jestem mężczyzną, mam na imię %@, a mój wiek to %@ lat", self.name, self.age];
    } else {
        return [NSString stringWithFormat:@"Cześć, jestem kobietą, mam na imię %@ a mój wiek to %@", self.name, self.age];
    }
}

-(NSString *)description2
{
    if(self.gender == Male) {
        return [NSString stringWithFormat:
                @"%@. Jestem mężczyzną, aktualnie studiuję %@, "
                "mam %@ przedmiotów na kierunku %@",
                [super description], _classes, _numberOfCredits, _major];
    } else {
        return [NSString stringWithFormat:
                @"%@. Jestem kobietą, aktualnie studiuję %@ "
                "mam %@ przedmiotów na kierunku %@",
                [super description], _classes, _numberOfCredits, _major];
    }
}





@end
