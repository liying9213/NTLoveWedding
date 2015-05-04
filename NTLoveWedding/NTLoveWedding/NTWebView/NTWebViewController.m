//
//  NTWebViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTWebViewController.h"

@interface NTWebViewController ()

@end

@implementation NTWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftItemtype:2 RightItemtype:0];
    [self ResetView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ResetView
{
    _webView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64)];
    _webView.delegate=self;
    _webView.backgroundColor=[UIColor yellowColor];
    NSURL *url=[NSURL URLWithString:_URLPath];
    NSURLRequest *request=[[NSURLRequest alloc] initWithURL:url];
    [_webView loadRequest:request];
    self.view.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:_webView];
}

#pragma mark - webViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self showWaitingView:@"正在加载...."];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self hideWaitingView];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self showEndText:error.localizedDescription];
}


@end
