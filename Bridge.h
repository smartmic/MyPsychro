#import "MyPsychro.h"
#import "psychrometrics.h"
 
int j;
double a;
double b;

@interface MyPsychro (Bridge)

- (id) process: (MyPsychro *) type;

@end
