#import <Foundation/Foundation.h>

// class Person ------------------------------------
@interface Person : NSObject {
  NSString *lastname;
  NSString *firstname;
}
-(void) talk;
@end

@implementation Person
-(void) talk {
  NSLog(@"Hello World");
}
@end

// main --------------------------------------------
int main(int argc, const char *argv []){
  Person *p = [Person new];
  [p talk];
}