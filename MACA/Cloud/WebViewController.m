//
//  WebViewController.m
//  MACA
//
//  Created by Yajun Gui on 4/20/15.
//  Copyright (c) 2015 yangwenjun. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.titleStr;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"leftBack.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 65, ScreenWidth, ScreenHeight - 65)];
    [self.view addSubview:webView];
    [self loadWebPageWithString:_urlString];
   

}


- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)loadWebPageWithString:(NSString *)urlString
{
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    [webView loadRequest:request];
}


- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"Start");
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"Finish");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"error");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end