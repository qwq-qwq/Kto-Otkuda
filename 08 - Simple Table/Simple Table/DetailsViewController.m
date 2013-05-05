//
//  DetailsViewController.m
//  Kto Otkuda
//
//  Created by km on 07.01.13.
//  Copyright (c) 2013 Dave Mark. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    self.title = webView.url;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //UIWebView* webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    //[self.view addSubview:webView];
    //NSURL* url = [NSURL URLWithString:@"http://apple.com"];
    //NSURLRequest* request = [NSURLRequest requestWithURL:url];
    //[webView loadRequest:request];
    //[webView setScalesPageToFit:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setWebview:nil];
    [super viewDidUnload];
}
@end
