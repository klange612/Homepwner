//
//  PossessionStore.m
//  Homepwner
//
//  Created by Kelley Lange on 5/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "PossessionStore.h"
#import "Possession.h"

static PossessionStore *defaultStore = nil;

@implementation PossessionStore

-(NSArray *)allPossessions
{
    return allPossessions;
}

-(Possession *)createPossessions
{
    Possession *p = [Possession randomPossession];
    [allPossessions addObject:p];
    
    return p;
}

+(PossessionStore *)defaultStore
{
    if (!defaultStore) {
        defaultStore = [[super allocWithZone:NULL] init];
    }
    return defaultStore;
}

+(id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}

-(id)init
{
    if (defaultStore) {
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allPossessions = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
