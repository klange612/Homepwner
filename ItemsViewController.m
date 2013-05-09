//
//  ItemsViewController.m
//  Homepwner
//
//  Created by Kelley Lange on 5/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "ItemsViewController.h"
#import "PossessionStore.h"
#import "Possession.h"

@implementation ItemsViewController


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [[[PossessionStore defaultStore] allPossessions] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    Possession *p = [[[PossessionStore defaultStore] allPossessions] objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[p description]];
    
    return cell;
}

-(id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    if (self) {
        for (int i = 0; i < 10; i++) {
            [[PossessionStore defaultStore] createPossessions];
        }
    }
    return self;
}


-(id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}



@end
