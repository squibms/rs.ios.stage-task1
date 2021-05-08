#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    if (self.length >= 0 || self.length <= 100) {

         NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        
         numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
         NSNumber *number = [numberFormatter numberFromString:self];

         return number != 0 ? true : false;
        
    } return false;
}

@end
