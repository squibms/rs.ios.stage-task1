#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    int unsignedIntValue = abs([number intValue]);
    NSMutableArray *convertedArray = [NSMutableArray new];
    
    while (unsignedIntValue !=0) {
        
    [convertedArray addObject:[NSString stringWithFormat:@"%d", unsignedIntValue % 10]];
                 unsignedIntValue /= 10;
        
    }
    return convertedArray;
    
}

@end
