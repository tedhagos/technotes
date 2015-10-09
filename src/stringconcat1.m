#import <Foundation/Foundation.h>

int main() {
  @autoreleasepool {
    NSString *a = @"Hello";
    NSString *b = @"World"; 

//    NSString *c = a + b;
//    NSString *c = [a stringByAppendingString: b];
    //NSString *c = [NSString stringWithFormat: @"%@ %@", a, b];
    NSMutableString *c = [NSMutableString stringWithString:a];
    [c appendString: b];
    //c = [a appendString:b];
    NSLog(c);

  }
}