#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    long arrayLength = [self count];

     if (arrayLength == 0) {
         return 0;
     }

     if ([self[0] intValue] <= [self[arrayLength - 1] intValue]) {
         return self[0];
     }

     if (arrayLength == 2) {
         return [self[0] intValue] < [self[1] intValue] ? self[0] : self[1];
     }

     long mid = arrayLength % 2 == 0 ? arrayLength / 2 : (arrayLength + 1) / 2;

     if ([self[0] intValue] < [self[mid - 1] intValue]) {
         
         return [[self subarrayWithRange:NSMakeRange(mid, arrayLength - mid)] minRotated];
     } else {
         return [[self subarrayWithRange:NSMakeRange(0, mid)] minRotated];
     }
}

@end
