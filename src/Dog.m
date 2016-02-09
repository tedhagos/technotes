#import <Foundation/Foundation.h>
#import "Dog.h"

@implementation Dog{
	@public NSString *name;
}
-(void) bark {
	name = @"Bow";
	NSLog(@"Dog Barking");
}

+(void) doSomething {
	NSLog(@"Doing Something. A class method");
}
@end