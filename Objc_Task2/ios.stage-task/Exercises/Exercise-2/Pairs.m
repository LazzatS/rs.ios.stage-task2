#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int difference = 0;                 // create a variable to calculate difference between values of the given array
    int startPoint = 0;                 // create a variable to take as a value to subtract from/to
    
    int match = 0;                      // create a variable to calculate matches
    int result = [number intValue];     // convert NSNumber object to integer variable
    
    // MARK: calulate differences
    
    NSMutableArray *differenceArray = [NSMutableArray array];       // create an array to collect calculated differences
    
    for (int sP = 0; sP < array.count; sP++) {      // iterate over start(primary) points over the array
        for (int a = 0; a < array.count; a++) {     // iterate over secondary points over the array
            difference = [array[a] intValue] - [array[startPoint] intValue];    // calculate the difference between primary and secondary variables
            if (difference > 0) {                   // if the difference is a positive value
                [differenceArray addObject:@(difference)];      // add the value of difference to the array of difference values
            }
        }
        startPoint += 1;                // move to the next start(primary) point
    }
    
    // MARK: count matches
    
    for (int diff = 0; diff < differenceArray.count; diff++) {      // iterate over all calculated differences
        if ([differenceArray[diff] intValue] == result) {           // if the difference value matches required answer
            match ++;                                               // calculate the number of matches
        }
    }
    
    return match;                       // return the number of matches
}

@end
