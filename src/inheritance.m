#import <Foundation/Foundation.h>

// class Vehicle ------------------------------
@interface Vehicle : NSObject {
  NSString *platenumber;
} 
-(NSString*) platenumber;
-(void) setPlatenumber: (NSString*) args;
@end

@implementation Vehicle 
-(NSString*) platenumber {
  return platenumber;
}
-(void) setPlatenumber:(NSString*) args {
  platenumber=args;
}
-(void) foo { 
  NSLog(@"private method Foo");
}
@end

// class Car -----------------------------------
@interface Car : Vehicle 
@end
@implementation Car
// this method will fail compilation because
// the ivar platenumber is not reachable from
// Car class
-(NSString*) platenumber {
  NSLog(@"Car polymorph");
  return platenumber;
}
@end

// class What ----------------------------------

@interface What : NSObject
@end
@implementation What
-(void) do {
  [[Vehicle new] foo];
}
@end

// main ----------------------------------------

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    Car *v = [Car new];
    [v setPlatenumber: @"1234"];
    NSLog(@"Car's plate number is %@", [v platenumber]);
    [v foo]; // why is this working ?
    [[What new] do]; // even this is working, there really is no private method
  }
  return 0;
}
