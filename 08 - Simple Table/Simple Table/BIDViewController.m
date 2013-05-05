//
//  BIDViewController.m
//  Simple Table
//
//  Created by Dave Mark on 8/30/11.
//  Copyright (c) 2011 Dave Mark. All rights reserved.
//

#import "BIDViewController.h"
#import "NSArray+MutableDeepCopy.h"
#import "DetailsViewController.h"

@interface BIDViewController ()
@property (strong, nonatomic) DetailsViewController *childController;
@end

@implementation BIDViewController
@synthesize names;
@synthesize table;
@synthesize keys;
@synthesize search;
@synthesize allNames;
@synthesize isSearching;
@synthesize childController;

#pragma mark -
#pragma mark Custom Methods
- (void)resetSearch {
    self.names = [self.allNames mutableDeepCopy];
}

- (void)handleSearchForTerm:(NSString *)searchTerm {
    [self resetSearch];
        NSMutableArray *array = names;
        NSMutableArray *toRemove = [[NSMutableArray alloc] init];
        for (NSDictionary *name in array) {
            if (([[name objectForKey:@"Kod"] rangeOfString:searchTerm options:NSCaseInsensitiveSearch].location == NSNotFound) &&
                ([[name objectForKey:@"Oblast"] rangeOfString:searchTerm options:NSCaseInsensitiveSearch].location == NSNotFound))
                [toRemove addObject:name];
        }
    [array removeObjectsInArray:toRemove];
    [table reloadData];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "город Киев", @"Oblast", @"AA", @"Kod", @"AA.png", @"Image", nil];
    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Винницкая ", @"Oblast", @"AB", @"Kod", @"AB.png", @"Image", nil];
    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Волынская ", @"Oblast", @"AC", @"Kod", @"AC.png", @"Image", nil];
    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Днепропетровская ", @"Oblast", @"AE", @"Kod", @"AE.png", @"Image", nil];
    NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Донецкая ", @"Oblast", @"AH", @"Kod", @"AH.png", @"Image", nil];
    NSDictionary *row6 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Житомирская ", @"Oblast", @"AM", @"Kod", @"AM.png", @"Image", nil];
    NSDictionary *row7 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Закарпатская ", @"Oblast", @"AO", @"Kod", @"AO.png", @"Image", nil];
    NSDictionary *row8 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Запорожская ", @"Oblast", @"AP", @"Kod", @"AP.png", @"Image", nil];
    NSDictionary *row9 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Ивано-Франковская ", @"Oblast", @"AT", @"Kod", @"AT.png", @"Image", nil];
    NSDictionary *row10 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Киевская ", @"Oblast", @"AI", @"Kod", @"AI.png", @"Image", nil];
    NSDictionary *row11 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "АР Крым", @"Oblast", @"AK", @"Kod", @"AK.png", @"Image", nil];
    NSDictionary *row12 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Харьковская ", @"Oblast", @"AX", @"Kod", @"AX.png", @"Image", nil];
    NSDictionary *row13 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Кировоградская ", @"Oblast", @"BA", @"Kod", @"BA.png", @"Image", nil];
    NSDictionary *row14 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Луганская ", @"Oblast", @"BB", @"Kod", @"BB.png", @"Image", nil];
    NSDictionary *row15 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Львовская ", @"Oblast", @"BC", @"Kod", @"BC.png", @"Image", nil];
    NSDictionary *row16 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Николаевская ", @"Oblast", @"BE", @"Kod", @"BE.png", @"Image", nil];
    NSDictionary *row17 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Одесская ", @"Oblast", @"BH", @"Kod", @"BH.png", @"Image", nil];
    NSDictionary *row18 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Полтавская ", @"Oblast", @"BI", @"Kod", @"BI.png", @"Image", nil];
    NSDictionary *row19 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Ровенская ", @"Oblast", @"BK", @"Kod", @"BK.png", @"Image", nil];
    NSDictionary *row20 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Сумская ", @"Oblast", @"BM", @"Kod", @"BM.png", @"Image", nil];
    NSDictionary *row21 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Тернопольская ", @"Oblast", @"BO", @"Kod", @"BO.png", @"Image", nil];
    NSDictionary *row22 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Херсонская ", @"Oblast", @"BT", @"Kod", @"BT.png", @"Image", nil];
    NSDictionary *row23 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Хмельницкая ", @"Oblast", @"BX", @"Kod", @"BX.png", @"Image", nil];
    NSDictionary *row24 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Черкасская ", @"Oblast", @"CA", @"Kod", @"CA.png", @"Image", nil];
    NSDictionary *row25 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Черниговская ", @"Oblast", @"CB", @"Kod", @"CB.png", @"Image", nil];
    NSDictionary *row26 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Черновицкая ", @"Oblast", @"CE", @"Kod", @"CE.png", @"Image", nil];
    NSDictionary *row27 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "город Севастополь", @"Oblast", @"CH", @"Kod", @"CH.png", @"Image", nil];
    NSDictionary *row28 = [[NSDictionary alloc] initWithObjectsAndKeys: @ "Общегосударственный", @"Oblast", @"II", @"Kod", @"II.png", @"Image", nil];
    
    NSArray * root = [[NSArray alloc] initWithObjects:row1, row2, row3, row4, row5, row6, row7, row8, row9, row10,
                      row11, row12, row13, row14, row15, row16, row17, row18, row19, row20,
                      row21, row22, row23, row24, row25, row26, row27, row28,nil];
 
//    NSArray * root = [[NSArray alloc] initWithObjects:
//                      [NSArray arrayWithObjects:@"Киевская", @"Донецкая", @"Харьковская", @"Черкасская", nil],
//                      [NSArray arrayWithObjects:@"AI", @"AH", @"AX", @"CA", nil],
//                      [NSArray arrayWithObjects:@"kievskaja.jpg", @"Four", @"Five", @"F", nil], nil];
    // Do any additional setup after loading the view, typically from a nib.
    self.allNames = root;
    [self resetSearch];
    [table reloadData];
    //[table setContentOffset:CGPointMake(0.0, 44.0) animated:NO];
    //childController = [[DetailsViewController alloc]
       //                initWithNibName:@"DetailsViewController" bundle:nil];
    
}

- (void)viewDidUnload
{
    [self setTable:nil];
    [self setSearch:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.names = nil;
    self.keys = nil;
    self.table = nil;
    self.search = nil;
    self.allNames = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark Table View Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:SimpleTableIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [names objectAtIndex:row];
    cell.textLabel.text = [rowData objectForKey:@"Oblast"];
    //cell.detailTextLabel.text = [rowData objectForKey:@"Kod"];
    UIImage *image = [UIImage imageNamed:[rowData objectForKey:@"Image"]];
    cell.imageView.image = image;
    //UIImage *image2 = [UIImage imageNamed:@"star2.png"];
    //cell.imageView.highlightedImage = image2;
    //cell.textLabel.font = [UIFont boldSystemFontOfSize:20];
    return cell;
}

#pragma mark -
#pragma mark Table Delegate Methods

//- (NSInteger)tableView:(UITableView *)tableView
//indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSUInteger row = [indexPath row];
//    return row;
//}

-(NSIndexPath *)tableView:(UITableView *)tableView
 willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSUInteger row = [indexPath row];
    
  //  if (row == 0)
     //   return nil;
    
    return indexPath;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSUInteger row = [indexPath row];
//    NSString *rowValue = [listData objectAtIndex:row];
//    
//    NSString *message = [[NSString alloc] initWithFormat:
//                         @"You selected %@", rowValue];
//    UIAlertView *alert = [[UIAlertView alloc]
//                          initWithTitle:@"Row Selected!"
//                          message:message
//                          delegate:nil
//                          cancelButtonTitle:@"Yes I Did"
//                          otherButtonTitles:nil];
//    [alert show];
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (childController == nil) {
        childController = [[DetailsViewController alloc]
                           initWithNibName:@"DetailsViewController" bundle:nil];
    }
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [names objectAtIndex:row];
    NSString* strOblast = [rowData objectForKey:@"Oblast"];
    NSString* s;
    UIWebView* webView = childController.webview;
    
    //[[UIWebView alloc] initWithFrame:childController.view.bounds];
    childController.title = strOblast;
   
    if ([strOblast isEqual: @"город Киев"]) {
       s = @"http://ru.wikipedia.org/wiki/Киев";  
    }else if([strOblast isEqual: @"город Севастополь"]){
       s = @"http://ru.wikipedia.org/wiki/Севастополь";
    }else if([strOblast isEqual: @"АР Крым"]){
        s = @"http://ru.wikipedia.org/wiki/Автономная_Республика_Крым";
    }else if([strOblast isEqual: @"Общегосударственный"]){
       s = @"http://ru.wikipedia.org/wiki/Индекс_автомобильных_номеров_Украины";
    }else{
       s = [@"http://ru.wikipedia.org/wiki/" stringByAppendingString: strOblast];
       s = [s stringByAppendingString:@"_область"];
    };
    s = [s stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL* url = [NSURL URLWithString:s];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    [webView setScalesPageToFit:YES];
    [webView loadRequest:request];
    
    [self.navigationController pushViewController:childController
                                         animated:YES];
    
    [search resignFirstResponder];
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}


#pragma mark -
#pragma mark Search Bar Delegate Methods
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSString *searchTerm = [searchBar text];
    [self handleSearchForTerm:searchTerm];
    [searchBar resignFirstResponder];
}

- (void)searchBar:(UISearchBar *)searchBar
    textDidChange:(NSString *)searchTerm {
    if ([searchTerm length] == 0) {
        [self resetSearch];
        [table reloadData];
        return;
    }
    [self handleSearchForTerm:searchTerm];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    isSearching = NO;
    search.text = @"";
    [self resetSearch];
    [table reloadData];
    [searchBar resignFirstResponder];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [search resignFirstResponder];
}


@end
