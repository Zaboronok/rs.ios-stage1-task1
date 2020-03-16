#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {

    int payAnna = 0;
    int result = 0;
    for (int i = 0; i < [bill count]; i++) {
        if (i != index) {
            payAnna = payAnna + [[bill objectAtIndex:i] intValue];
        }
    }
    result = payAnna/2;
    if (result == [sum intValue]) {
        return @"Bon Appetit";
    }else{
        int sumResult = [sum intValue] - result;
        return [NSString stringWithFormat:(@"%i"), sumResult];
    }
}

@end
