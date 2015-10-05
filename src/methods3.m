/*
Code below won't work, overloading of methods
does not work the way they do in Java or C#
*/

#import <Foundation/Foundation.h>

@interface Obj : NSObject
-(void) boo: (int) a Coo:(int) b Doo:(int) c;
@end 

@implementation Obj
-(void) boo:(int) a Coo:(int) b Doo:(int) c {
  NSLog(@"The params are %i, %i and %i", a,b,c);
}
@end

int main(int argc, const char *argv[]){
  @autoreleasepool {
    [[Obj new] boo: 1 Coo:2 Doo:3];
  }
}