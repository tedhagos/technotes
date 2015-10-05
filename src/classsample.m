/*

How to instantiate a class

*/

#import <Foundation/Foundation.h>

@interface Person : NSObject
-(void) talk: (NSString*) args;
@end

@implementation Person
-(void) talk: (NSString*) args {
  NSLog(args);
}

+(id) new {
  NSLog(@"Overriding new method");
  return [[self alloc] init];
}
@end

int main(int argc, const char *argv[]) {
  Person *p;
  p = [Person alloc];
  p = [p init];
  [p talk: @"Hello there"];

  Person *p2 = [Person new];

  /*
  Other ways of creating objects are as follows
  Person *p = [[Person alloc] init]; or
  Person *p = [Person new];
  */
}