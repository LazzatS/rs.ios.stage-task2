#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    int myInteger = n;              // create variable for given integer
    int binaryDigit, newValue;      // create variables for binary digits in the array and for value of 2 to the power of
    int result = 0;                 // the reversed binary array's decimal value
    
    NSMutableArray *myArray = [NSMutableArray array];   // array will be reversed that is why must be mutable
    
    // MARK: given decimal --> binary number
    
    while (myInteger > 0) {         // loop over indeces of the array until given integer is not 0
        int division = 0;           // create new variable to make calculations after each division
        for (int i = 0; i < 8; i++) {   // iterate until all 8 binary digits are created
            division = myInteger / 2;   // divide decimal number by 2 at every iteration
            if (myInteger % 2 == 0) {   // find the remainder after division
                binaryDigit = 0;        // if remainder is 0, binary digit is zero too
            } else {
                binaryDigit = 1;        // if remainder is not 0, binary digit is one
            }
            myInteger = division;       // renew the decimal number for the next iteration
            [myArray addObject:@(binaryDigit)]; // add obtained binary digits to an array
        }
        
    }
    
    // MARK: found binary --> decimal number
    
    NSArray *reversedArray = [[myArray reverseObjectEnumerator] allObjects];    // create a reversed array
    
    for (int x = 0; x < reversedArray.count; x++) { // iterate until all 8 binary digits of the reversed array are calculated
        if ([reversedArray[x] intValue] == 0) {     // if the binary digit is zero, skip it
            newValue = 0;                           // the decimal value at zero-digit is zero
        } else {
            newValue = pow(2,x);                    // the decimal value at one-digit is 2^(order of the one-digit index)
        }
        result += newValue;                         // sum up all obtained values
    }

    return result;                                  // return the result
}
