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
    // Dispose of any resources that can be recreated.
}

#pragma mark - ResetView
- (void)resetView
{
    _scrollView.contentSize=CGSizeMake(0, MainHeight*2);
    [self ResetHeadView];
}

- (void)ResetHeadView
{
    UIScrollView *headScroll=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, 150)];
    headScroll.tag=1024;
    headScroll.backgroundColor=[UIColor clearColor];
    headScroll.showsHorizontalScrollIndicator=YES;
    headScroll.showsVerticalScrollIndicator=NO;
    headScroll.pagingEnabled=YES;
    for (int i=0; i<3; i++) {
        UIView *sonView=[[UIView alloc] initWithFrame:CGRectMake(MainWidth*i,0 , MainWidth, 150)];
        sonView.backgroundColor=[NTColor yellowColor];
        [headScroll addSubview:sonView];
    }
    headScroll.contentSize=CGSizeMake(MainWidth*3, 0);
    [_scrollView addSubview:headScroll];
    UIView *contentView=[[UIView alloc] initWithFrame:CGRectMake(0, 120, MainWidth, 50)];
    contentView.backgroundColor=[UIColor clearColor];
    UIView *bgView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, 50)];
    bgView.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    bgView.alpha=0.8;
    [contentView addSubview:bgView];
    [_scrollView addSubview:contentView];
    for (int i=0; i<3; i++)
    {
        UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(MainWidth/3*i, 0, MainWidth/3, 50)];
        titleLabel.text=@"90932\n加入";
        titleLabel.numberOfLines=0;
        titleLabel.textAlignment=NSTextAlignmentCenter;
        titleLabel.lineBreakMode=NSLineBreakByWordWrapping;
        [contentView addSubview:titleLabel];
    }
}

- (void)ResetModuleView
{
    
}

- (void)ResetRecommendView
{
    
}

- (void)ResetScrollSelectView
{
    
}

- (void)ResetListView
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
