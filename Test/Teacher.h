

#import <UIKit/UIKit.h>
#import "Person.h"

@interface Teacher: Person

@property NSArray *classes;
@property NSNumber *salary;
@property NSString *areaOfExpertise;

-(id)initWithName:(NSString *)name
            age:(NSNumber *)age
        gender:(Gender)gender
        classes:(NSArray *)classes
         salary:(NSNumber *)salary
areaOfExpertise:(NSString *)areaOfExpertise;

@end