#import <Foundation/Foundation.h>

// class Vehicle ------------------------------
@interface Vehicle : NSObject 
-(NSString*) platenumber;
-(void) setPlatenumber: (NSString*) args;
@end

@implementation Vehicle {
  NSString *platenumber;
}
-(NSString*) platenumber {
  return platenumber;
}
-(void) setPlatenumber:(NSString*) args {
  platenumber=args;
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

// main ----------------------------------------

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    Car *v = [Vehicle new];
    [v setPlatenumber: @"1234"];
    NSLog(@"Car's plate number is %@", [v platenumber]);
  }
  return 0;
}
