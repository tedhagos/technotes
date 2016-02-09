#import <Foundation/Foundation.h>

@interface Person : NSObject {
	@public NSString *name;
}
-(NSString*) getName;
-(void) setName:(NSString*) args;
-(void) talk;
@end

@implementation Person
-(NSString*) getName {
	return name;
}
-(void) setName: (NSString*) args {
	name = args;
}
-(void) talk {
	printf("Hello World\n");
}

@end

/// main 

int main() {

/*
  Person *p = [Person alloc];
	p = [p init];
	[p talk];
*/
	//Person *person = [[Person alloc]init];
	//[person talk];

	Person *p = [Person new];
	[p setName:@"John Doe"];
	NSLog([p getName]);
	[p talk];
	

	return 0;
}