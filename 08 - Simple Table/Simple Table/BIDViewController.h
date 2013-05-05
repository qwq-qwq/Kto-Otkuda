//
//  BIDViewController.h
//  Simple Table
//
//  Created by Dave Mark on 8/30/11.
//  Copyright (c) 2011 Dave Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (strong, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) IBOutlet UISearchBar *search;
@property (strong, nonatomic) NSArray *allNames;
@property (strong, nonatomic) NSMutableArray *names;
@property (assign, nonatomic) BOOL isSearching;
@property (strong, nonatomic) NSMutableArray *keys;
- (void)resetSearch;
- (void)handleSearchForTerm:(NSString *)searchTerm;
@end