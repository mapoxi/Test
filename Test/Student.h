//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Person.h"

@interface Student: Person

@property NSArray *classes;
@property NSNumber *numberOfCredits;
@property NSString *major;


- (id)initWithName:(NSString *)name
               age:(NSNumber *)age
            gender:(Gender)gender
           classes:(NSArray *)classes
   numberOfCredits:(NSNumber *)numberOfCredits
             major:(NSString *)major;

@end
