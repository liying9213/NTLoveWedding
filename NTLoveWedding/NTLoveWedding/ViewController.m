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
#import "NTPlaceListViewController.h"
#import "NTDIYListViewController.h"
#import "NTAfflatusListViewController.h"
#import "NTStrategyListViewController.h"
#import "NTWebViewController.h"
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
    NTScrImgView *scrImgView=[[NTScrImgView alloc] initWithFrame:CGRectMake(0, height, MainWidth, 150*Mulriple)];
    scrImgView.delegate=self;
    [scrImgView ResetViewAndLabelWith:nil];
    [_scrollView addSubview:scrImgView];
    height+=scrImgView.frame.size.height;
}

- (void)ResetModuleView
{
    NSDictionary *dic1=[NSDictionary dictionaryWithObjectsAndKeys:@"宴会场地",@"name", nil];
    NSDictionary *dic2=[NSDictionary dictionaryWithObjectsAndKeys:@"DIY婚礼",@"name", nil];
    NSDictionary *dic3=[NSDictionary dictionaryWithObjectsAndKeys:@"宴会灵感",@"name", nil];
    NSDictionary *dic4=[NSDictionary dictionaryWithObjectsAndKeys:@"结婚攻略",@"name", nil];
    NSArray *ary=[NSArray arrayWithObjects:dic1,dic2,dic3,dic4, nil];
    
    NTSelectView *selectView=[[NTSelectView alloc] initWithFrame:CGRectMake(0, height, MainWidth, 150*Mulriple) withData:ary];
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
    switch (((UIButton *)sender).tag) {
        case 0:
        {
            NTPlaceListViewController *viewController=[[NTPlaceListViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
        case 1:
        {
            NTDIYListViewController *viewController=[[NTDIYListViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
        case 2:
        {
            NTAfflatusListViewController *viewController=[[NTAfflatusListViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
        case 3:
        {
            NTStrategyListViewController *viewController=[[NTStrategyListViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
            
        default:
            break;
    }
}

-(void)RecommendAction:(id)sender
{
    
}

#pragma mark - HeaderImageViewDelegate

-(void)openTheHeadView:(id)sender
{
    NTWebViewController *viewController=[[NTWebViewController alloc] init];
    viewController.URLPath=@"http://www.sina.com";
    [self.navigationController pushViewController:viewController animated:YES];
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
