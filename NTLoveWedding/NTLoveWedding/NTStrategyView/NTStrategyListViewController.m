//
//  NTStrategyListViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTStrategyListViewController.h"
#import "NTLeftImgTableViewCell.h"
#import "NTStrategyViewController.h"

@interface NTStrategyListViewController ()

@end

@implementation NTStrategyListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"结婚攻略";
    [self setLeftItemtype:2 RightItemtype:0];
    [self GetTheListData];
    [self ResetTableView];
    [_tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)ResetTableView
{
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64)];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    _tableView.rowHeight=100;
    [self.view addSubview:_tableView];
}

#pragma mark - getData
-(void)GetTheListData
{
    _DataAry=[[NSMutableArray alloc] initWithCapacity:10];
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"1024",@"id",@"20150204051516385.jpg",@"img", @"爱婚汇隆重推出 浪漫蜜月行 云南丽江，大理4晚5日行",@"title",@"LOVE婚汇隆重推出浪漫蜜月行：雪海情缘，雪中情，海中意，缘来是你，直奔唯美",@"info",nil];
    for (int i=0; i<10; i++) {
        [_DataAry addObject:dic];
    }
}

#pragma mark - TabelViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _DataAry.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    NTLeftImgTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    NTLeftImgTableViewCell *cell;
    if (cell==nil)
    {
        cell=[[NTLeftImgTableViewCell  alloc] initHaveTimeCellWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuseIdentifier"];
    }
    cell.leftImg.image=[UIImage imageNamed:[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"img"]];
    cell.titleLabel.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"title"];
    cell.titleLabel.numberOfLines=0;
    cell.titleLabel.lineBreakMode=NSLineBreakByWordWrapping;
    CGRect rect=cell.titleLabel.frame;
    rect.origin.y-=5;
    rect.size.height*=2.9;
    cell.titleLabel.font=[UIFont systemFontOfSize:15];
    cell.titleLabel.frame=rect;
    cell.info1Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"info"];
    cell.info1Label.numberOfLines=2;
    cell.info1Label.lineBreakMode=NSLineBreakByTruncatingTail;
    CGRect rect1=cell.info1Label.frame;
    rect1.origin.y=rect.origin.y+rect.size.height-5;
    rect1.size.height*=1.8;
    cell.info1Label.frame=rect1;
    cell.info1Label.font=[UIFont systemFontOfSize:13];
    cell.info1Label.textColor=[UIColor lightGrayColor];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NTStrategyViewController *viewController=[[NTStrategyViewController alloc] init];
    viewController.TheID=[[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"id"] intValue];
    [self.navigationController pushViewController:viewController animated:YES];
}

-(float)GetHeightWithString:(NSString *)string WithFontSize:(float)size
{
    
    return 0;
}



@end
