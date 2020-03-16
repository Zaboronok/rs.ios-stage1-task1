#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    NSMutableArray *sumArray = [NSMutableArray new];
    for (int i = 0; i < [array count]; i++) {
        int sum = 0;
        for (int y = 0; y < [array count]; y++) {
            if (y != i) {
                int curNum =[(NSNumber *)[array objectAtIndex:y] intValue];
                sum = sum + curNum;
            }
        }
        [sumArray addObject:@(sum)];
    }
    
    NSNumber *max=[sumArray valueForKeyPath:@"@max.intValue"];
    NSNumber *min=[sumArray valueForKeyPath:@"@min.intValue"];
    return @[min,max];
}

@end
