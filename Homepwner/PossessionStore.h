//
//  PossessionStore.h
//  Homepwner
//
//  Created by Kelley Lange on 5/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Possession;

@interface PossessionStore : NSObject
{
    NSMutableArray *allPossessions;
    
}

+(PossessionStore *)defaultStore;

-(NSArray *)allPossessions;
-(Possession *)createPossession;

@end
