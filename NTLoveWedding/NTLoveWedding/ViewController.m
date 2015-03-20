//
//  ViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/16.
//  Copyright (c) 2015年 liying. All rights reserved.
//
#import "NTdefine.h"
#import "NTColor.h"
#import "ViewController.h"
#import "NTLoginViewController.h"
#import "NTScrImgView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Love婚汇";
    [self setLeftItemtype:1 RightItemtype:1];
    [self resetView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - ResetView
- (void)resetView
{
    height=0;
    _scrollView.contentSize=CGSizeMake(0, MainHeight*2);
    [self ResetHeadView];
    [self ResetModuleView];
    [self ResetRecommendView];
    
}

- (void)ResetHeadView
{
    NTScrImgView *scrImgView=[[NTScrImgView alloc] initWithFrame:CGRectMake(0, height, MainWidth, 150*Mulriple) withData:nil];
    [_scrollView addSubview:scrImgView];
    height+=scrImgView.frame.size.height;
}

- (void)ResetModuleView
{
    NTSelectView *selectView=[[NTSelectView alloc] initWithFrame:CGRectMake(0, height, MainWidth, 150*Mulriple) withData:nil];
    selectView.delegate=self;
    [_scrollView addSubview:selectView];
    height+=selectView.frame.size.height;
}

- (void)ResetRecommendView
{
    NTRecommendView *recommendView=[[NTRecommendView alloc] initWithFrame:CGRectMake(0, height, MainWidth, 150*Mulriple) withData:nil];
    recommendView.delegate=self;
    [_scrollView addSubview:recommendView];
    height+=recommendView.frame.size.height;
}

- (void)ResetScrollSelectView
{
    
}

- (void)ResetListView
{
    
}

#pragma mark - SelectViewDelegate
-(void)selectAction:(id)sender
{
    NSLog(@"====%@",(UIButton *)sender);
}

-(void)RecommendAction:(id)sender
{
    
}

#pragma mark - NavigationAction

- (void)localAction:(id)sender
{
    
}
- (void)userAction:(id)sender
{
    NTLoginViewController *viewController=[[NTLoginViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
