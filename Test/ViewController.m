//
//  ViewController.m
//  Test
//
//  Created by Piotr Mlynarski on 15.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "ViewController.h"

#import "AppDelegate.h"
#import "Person.h"
#import "Teacher.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] initWithName:@"Janek" age:[NSNumber numberWithInt:23] gender:Male];
    
    Student *student = [[Student alloc] initWithName:@"Janek" age:[NSNumber numberWithInt:23] gender:Male classes:[NSArray arrayWithObjects:@"Polski", @"Angielski", @"Matematyka", nil] numberOfCredits:[NSNumber numberWithInt:12] major:@"cs"];
    
    Teacher *teacher = [[Teacher alloc] initWithName:@"Władek" age:[NSNumber numberWithInt:30] gender:Male classes:[NSArray arrayWithObjects:@"ARM", @"Imponujace gry", @"Fizyka stosowana", nil] salary:[NSNumber numberWithInt:60000] areaOfExpertise:@"HCI"];
    
    NSLog(@"Oto opis mojej osoby:\n%@", person);
    NSLog(@"Oto opis mnie jako studenta:\n%@", student);
    NSLog(@"Oto opis mojego wykładowcy:\n%@", teacher);

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
