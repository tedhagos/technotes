/*

It is ridiculous to access public ivars, but for purposes of the lecture,
I gotta know how to do it, just to demonstrate the point

*/

#import <Foundation/Foundation.h>

@interface Person : NSObject{
	@public NSString *lastname;
	@public NSString *firstname;
}
@end

@implementation Person
@end

/// main
int main(int argc, const char *argv []){
  Person *p = [Person new];
  p->firstname = @"Ted";
  p->lastname = @"Hagos";
  NSLog(@" Name is %@ , %@", p->lastname, p->firstname);
}