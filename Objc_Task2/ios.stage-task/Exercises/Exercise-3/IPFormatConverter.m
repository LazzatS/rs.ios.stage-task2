#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {

    int x = 0;
    NSString *z = @"test";
    NSString *result = @"";
    NSMutableArray *stringArray = [NSMutableArray array];
    
    
    for (int i = 0; i < numbersArray.count; i++) {
        x = [numbersArray[i] intValue];
        
        if (x > 255) {
            result = @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if (x < 0) {
            result = @"Negative numbers are not valid for input.";
        }
        
        z = [NSString stringWithFormat:@"%d", x];
        [stringArray addObject:z];
    }
    
    
    if ([[stringArray componentsJoinedByString:@"."] length] <= 15) {
        result = [stringArray componentsJoinedByString:@"."];
    }

    return result;
}

@end
