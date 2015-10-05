/*
Code below won't work, overloading of methods
does not work the way they do in Java or C#
*/

#import <Foundation/Foundation.h>

@interface Obj : NSObject
-(void) foo;
-(void) foo: (int) args;
-(void) foo: (float) args;
-(void) foo: (BOOL) args;
-(void) foo: (NSString*) args;
@end 

@implementation Obj
-(void) foo {}
-(void) foo: (int) args {}
-(void) foo: (float) args {}
-(void) foo: (BOOL) args {}
-(void) foo: (NSString*) args{}
@end

int main(int argc, const char *argv[]){
  @autoreleasepool {
    Obj *o = [Obj new];
  }
}