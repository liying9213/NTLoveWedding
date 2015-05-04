//
//  NTDIYViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/24.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTDIYViewController.h"
#import "NTScrImgView.h"
#import "NTdefine.h"
#import "NTColor.h"
@interface NTDIYViewController ()

@end

@implementation NTDIYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor lightGrayColor];
    [self setLeftItemtype:2 RightItemtype:0];
    _scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, self.view.frame.size.height-64)];
    _scrollView.scrollEnabled=YES;
    [self.view addSubview:_scrollView];
    [self GetTheData];
    [self ResetheadView];
    [self ResetInfoForMainView];
//    for (NSDictionary *dic in [_TheDic objectForKey:@"info"]) {
//        [self ResetIntroduceViewWith:dic];
//    }
//    [_scrollView setContentSize:CGSizeMake(0, height)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -getData
-(void)GetTheData
{
    _TheDic=[[NSMutableDictionary alloc] init];
    
    NSDictionary *dic1=[NSDictionary dictionaryWithObjectsAndKeys:@"酒店介绍",@"title",@"东长安饭店经营正宗的淮扬菜和粤菜风味。餐厅具有民族风格的设计，清清幽雅的就餐环境，使宾客在用餐的同时享有舒适的心情，在东长安饭店举行婚宴，必定甜蜜喜悦，毕生难忘。",@"info", nil];
    NSDictionary *dic2=[NSDictionary dictionaryWithObjectsAndKeys:@"宴会厅",@"title",@"大厅￥1588/桌起\n面积：150m2 楼层： 1层 桌数：1-8桌 风格： 柱子：无\n免开瓶费 免婚庆入场费 免服务费 免场地费",@"info", nil];
    NSDictionary *dic3=[NSDictionary dictionaryWithObjectsAndKeys:@"婚宴菜单",@"title",@"￥1588/桌\n涉及市场波动，您目前价格是参考价格，请以店内最终价格为准",@"info", nil];
    
    NSArray *ary=[NSArray arrayWithObjects:dic1,dic2,dic3, nil];
    [_TheDic setObject:ary forKey:@"info"];
    
    
}

#pragma mark -resetView

-(void)ResetheadView
{
    NSArray *ary=[NSArray arrayWithObjects:@"20150126114102769.jpg",nil];
    NTScrImgView *ScrImgView=[[NTScrImgView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, 200)];
    [ScrImgView ResetViewWith:ary];
    [_scrollView addSubview:ScrImgView];
}

-(void)ResetInfoForMainView
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 200, MainWidth, 160)];
    view.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 20)];
    titleLabel.font=[UIFont systemFontOfSize:16];
    titleLabel.text=@"化妆造型：";
    [view addSubview:titleLabel];
    
    UILabel *typeLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 40, 100, 20)];
    typeLabel.font=[UIFont systemFontOfSize:15];
    typeLabel.text=@"预订次数:20次";
    [view addSubview:typeLabel];
    
    UILabel *priceLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 70, MainWidth, 20)];
    priceLabel.font=[UIFont systemFontOfSize:15];
    priceLabel.text=@"婚汇价:￥800";
    [view addSubview:priceLabel];
    
    UILabel *placeLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 100, MainWidth, 20)];
    placeLabel.font=[UIFont systemFontOfSize:15];
    placeLabel.text=@"市场价:￥1500";
    [view addSubview:placeLabel];

    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor=[NTColor colorWithHexString:@"84C1FF"];
    btn.frame=CGRectMake(MainWidth-100, 20, 80, 40);
    [btn setTitle:@"预定" forState:UIControlStateNormal];
    [view addSubview:btn];
    
    [_scrollView addSubview:view];
    height=360;
}

-(void)ResetIntroduceViewWith:(id)data
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, height+20, MainWidth, 200)];
    view.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 10, MainWidth-20, 30)];
    titleLabel.font=[UIFont systemFontOfSize:18];
    titleLabel.text=[data objectForKey:@"title"];
    [view addSubview:titleLabel];
    
    UILabel *infoLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 45, MainWidth-20, 100)];
    infoLabel.numberOfLines=0;
    infoLabel.lineBreakMode=NSLineBreakByWordWrapping;
    infoLabel.font=[UIFont systemFontOfSize:15];
    infoLabel.text=[data objectForKey:@"info"];
    [view addSubview:infoLabel];
    
    [_scrollView addSubview:view];
    height+=220;
}

@end
