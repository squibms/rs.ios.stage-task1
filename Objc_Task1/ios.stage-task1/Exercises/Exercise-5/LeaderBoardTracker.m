#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *finalRanks = NSMutableArray.array;
    NSUInteger counter = [rankedArray count];
    int count = 0;

        for (int i = 0; i < [playerArray count]; i++) {
            count = 1;
            for (int j = 0; j < counter; j++) {
                if ([playerArray[i] intValue] >= [rankedArray[j] intValue]) {
                    break;
                } else {
                    if (j+1 == counter || rankedArray[j+1] != rankedArray[j]) {
                    count++;
                    }
                }
            }
            [finalRanks addObject : [NSNumber numberWithInt : count]];
        }

        return finalRanks;
}

@end
