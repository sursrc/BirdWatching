#import "BirdSightingDataController.h"
#import "BirdSighting.h"

@interface BirdSightingDataController ()
- (void)initializeDefaultDataList;
@end

@implementation BirdSightingDataController

@synthesize masterBirdSightingList = _masterBirdSightingList;

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
    }
    return self;
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList {
    if (_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}

- (NSUInteger)countOfList {
    return [self.masterBirdSightingList count];
}

- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}


- (void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation {
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    
    sighting = [[BirdSighting alloc] initWithName:inputBirdName location:inputLocation date:today];
    [self.masterBirdSightingList addObject:sighting];
    
}

- (void)initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    
    self.masterBirdSightingList = sightingList;
    [self addBirdSightingWithName:@"Pigeon" location:@"Everywhere"];
}
@end
