#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    if ([sadArray count] != nil) {
        NSMutableArray *newArray = [[NSMutableArray arrayWithArray:sadArray]init];
        for (int x=0; x<3; x++) {
            for (int i = 1; i < [newArray count] - 1; i++) {
                int prev = [(NSNumber *)[newArray objectAtIndex:i - 1] intValue];
                int next = [(NSNumber *)[newArray objectAtIndex:i + 1] intValue];
                int sum = prev + next;
                int curNum = [(NSNumber *)[newArray objectAtIndex:i] intValue];
                //NSLog(@"prev:%d \n next:%d \n current number: %d \n sum: %d",prev,next,curNum,sum);
                if (curNum  > sum) {
                    [newArray removeObjectAtIndex:i];
                }
            }
        }
        sadArray = [NSArray arrayWithArray:newArray];
        //NSLog(@"sadArray: %@",sadArray);
    }
    return [NSArray arrayWithArray:sadArray];
}

@end
