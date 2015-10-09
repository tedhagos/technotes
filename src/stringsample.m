#import <Foundation/Foundation.h>

int main() {
	@autoreleasepool {
		NSString *s = @"My String";

		NSLog(s);
		s = [s uppercaseString];
		NSLog(s);
		s = [s lowercaseString];
		NSLog(s);
		s = [s capitalizedString];
		NSLog(s);

		NSString *x = s;
		NSString *y = [s copy];
		NSLog(y);
		if(x == y) {
			NSLog(@"X Equals Y");
		}
		else {
			NSLog(@"X Does not Equal Y");
		}
	}
}