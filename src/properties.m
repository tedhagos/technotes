#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *lastname, *firstname;
@end

@implementation Person
@end

// main 

int main(int argc, const char *argv[]){
	@autoreleasepool {
		Person *p = [Person new];
		[p setLastname: @"Doe"];
		[p setFirstname: @"John"];
		NSLog(@"The name is %@, %@", [p lastname], [p firstname]);
	}
	return 0;
}