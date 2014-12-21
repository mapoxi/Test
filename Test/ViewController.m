//
//  ViewController.m
//  Test
//
//  Created by Piotr Mlynarski on 15.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *slownik = @{@1:@"jeden"};
    statusLabel.text = [NSString stringWithFormat:@"%@", [slownik objectForKey:@1]];
    
    struct karton {
        NSInteger wysokosc;
        NSInteger szerokosc;
        NSInteger dlugosc;
    };
    
    struct karton pierwsze, drugie, trzecie;
    
    pierwsze.dlugosc = 100;
    drugie.wysokosc = 200;
    trzecie.szerokosc = 300;
    
    ////////////////////////
    boxLabel.text = [NSString stringWithFormat:@"%ld", (long)drugie.wysokosc];
    NSString *str1 = @"Witaj Harry";
    test.text = [NSString stringWithFormat:@"%@ %@", str1, [str1 lowercaseString]];
    
    NSString *str2 = @"Witaj Harry";
    if (str1 == str2) test.text = @"równe";
    else test.text = [NSString stringWithFormat: @"nie równe" ];
    
    /////////////////////iteracja po tablicy
    NSString *tablicaZc[] = {@"Jeden", @"Dwa", @"Trzy"};
    NSArray *tablica = [NSArray arrayWithObjects: tablicaZc count:3];
    test.text = [NSString stringWithFormat:@"Pierwsza komórka %@", [tablica objectAtIndex:0]];
    test.text = [NSString stringWithFormat:@"W tablicy jest %lu komórek", (unsigned long)[tablica count]];
    
    int i;
    NSString *poszukiwanaJedynka = @"Jeden";
    BOOL found = NO;
    
    for (i = 0; i < [tablica count]; i++) {
        if ([[tablica objectAtIndex:i] isEqual:poszukiwanaJedynka]){
            found = YES;
            break;
        }
    }
    if (found)  test.text = [NSString stringWithFormat:@"Element '%@' został znaleziony", poszukiwanaJedynka];
    else test.text = [NSString stringWithFormat:@"Element '%@' nie został znaleziony", poszukiwanaJedynka];
    //alternatywa iteracji po tablicy
    BOOL found2 = [tablica containsObject:@"Jeden"];
    if (found2) {
        test.text = [NSString stringWithFormat:@"Element '%@' został szybko znaleziony", poszukiwanaJedynka];
    }
    //koniec alternatywy
    //index tablicy
    NSInteger indexTablicy = [tablica indexOfObject: @"Jeden"];
    if (indexTablicy != NSNotFound)
        test.text = [NSString stringWithFormat:@"Element '%@' został znaleziony na pozycji %ld", poszukiwanaJedynka, (long)indexTablicy];
    //iteracja przez tablice
    for (i = 0; i < [tablica count]; i++) {
        NSString *liczba = [tablica objectAtIndex:i];
        test.text = [NSString stringWithFormat:@"%@\n", liczba];
    }
    //enumerator
    NSEnumerator *enumerator = [tablica objectEnumerator];
    NSString *liczba; //powyższa zmienna "liczba" kończy się wraz z pętlą??
    while (liczba = [enumerator nextObject]) {
        NSLog(@"Liczba to: %@", liczba);
    }
    //reverse enumerator
    NSEnumerator *enumerator2 = [tablica reverseObjectEnumerator];
    for (NSString *liczba in enumerator2){
        NSLog(@"Liczba reverse fast en to: %@", liczba);
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
