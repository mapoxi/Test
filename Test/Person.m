//
//  Person.m
//  PersonClass
//
//  Created by Amos Bannister on 14/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Person.h"


@implementation Person

//czy zamiast poniższego mogę zastosować @synthesize ...
- (id)init {
    if ((self = [super init])) {
        _name = @"Person";
        _age = [NSNumber numberWithInt:-1];
        _gender = Male;
    }
    
    return self;
}

- (id)initWithName:(NSString *)name {
    if ((self = [super init])) {
        _name = name;
        _age = [NSNumber numberWithInt:-1];
        _gender = Male;
    }
    
    return self;
}


- (id)initWithAge:(NSNumber *)age {
    if ((self = [super init])) {
        _name = @"Person";
        _age = age;
        _gender = Male;
    }
    
    return self;
}

- (id)initWithGender:(Gender)gender {
    if ((self = [super init])) {
        _name = @"Person";
        _age = [NSNumber numberWithInt:-1];
        _gender = gender;
    }
    
    return self;
}

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender {
    if ((self = [super init])) {
        _name = name;
        _age = age;
        _gender = gender;
    }
    
    return self;
}


- (NSString *)description {
    if (_gender==Male) {
        return [NSString stringWithFormat:@"Cześć, jestem mężczyzną, mam na imię %@, a mój wiek to %@ lat", _name, _age];
    } else {
        return [NSString stringWithFormat:@"Cześć, jestem kobietą, mam na imię %@, a mój wiek to %@ lat", _name, _age];
    }
}

@end
