#import <Foundation/Foundation.h>
#import "foo.h"

@implementation Foo
@end

int main() {
  @autoreleasepool {
    Foo *f = [[Foo alloc] init];
  }
  return 0;
}