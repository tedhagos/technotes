#import "Dog.h"


int main(int argc, const char *argv[]){
	Dog *d = [Dog new];
	[d bark];
	[Dog doSomething];
	NSLog(@"%@", d->name);
}