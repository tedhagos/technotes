#import <Foundation/Foundation.h>

@interface Obj : NSObject
-(void) foo;
-(void) goo: (int) args;
-(void) boo: (float) args;
-(void) coo: (BOOL) args;
-(void) doo: (NSString*) args;
@end 

@implementation Obj
-(void) foo {}
-(void) goo: (int) args {}
-(void) boo: (float) args {}
-(void) coo: (BOOL) args {}
-(void) doo: (NSString*) args{}
@end

int main(int argc, const char *argv[]){
  @autoreleasepool {
    Obj *o = [Obj new];
  }
}