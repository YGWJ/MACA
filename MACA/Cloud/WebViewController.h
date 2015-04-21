//
//  WebViewController.h
//  MACA
//
//  Created by Yajun Gui on 4/20/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "BaseViewController.h"

@interface WebViewController : BaseViewController <UIWebViewDelegate>
{
    UIWebView *webView;
}

@property (nonatomic,retain) NSString *urlString;

@property (strong, nonatomic) NSString *titleStr;

- (void)loadWebPageWithString:(NSString*)urlString;



@end
