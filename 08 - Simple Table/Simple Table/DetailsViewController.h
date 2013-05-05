//
//  DetailsViewController.h
//  Kto Otkuda
//
//  Created by km on 07.01.13.
//  Copyright (c) 2013 Dave Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController <UIWebViewDelegate>
//@property (strong, nonatomic) IBOutlet UILabel *message;
@property (strong, nonatomic) IBOutlet UIWebView *webview;

@end
