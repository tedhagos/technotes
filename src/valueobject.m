#import <Foundation/Foundation.h>

@interface Person : NSObject
-(void) setLastname:(NSString*) arg;
-(void) setFirstname: (NSString*) arg;
-(NSString*) lastname;
-(NSString*) firstname;
@end

@implementation Person{
  @private NSString *lastname;
  @private NSString *firstname;
}
-(void) setLastname:(NSString*) arg{lastname = arg;}
-(void) setFirstname: (NSString*) arg {firstname = arg;}
-(NSString*) lastname {return lastname;}
-(NSString*) firstname {return firstname;}
@end

/// main
int main(int argc, const char *argv []){
  Person *p = [Person new];
  [p setFirstname:@"Ted"];
  [p setLastname: @"Hagos"];
  NSLog(@" Name is %@ , %@", [p lastname], [p firstname]);
}