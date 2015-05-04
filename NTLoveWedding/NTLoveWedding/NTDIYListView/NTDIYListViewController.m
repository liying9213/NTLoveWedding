//
//  NTDIYListViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTDIYListViewController.h"
#import "NTLeftImgTableViewCell.h"
#import "NTDIYViewController.h"
@interface NTDIYListViewController ()

@end

@implementation NTDIYListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"DIY婚礼";
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
    _tableView.rowHeight=90;
    [self.view addSubview:_tableView];
}

#pragma mark - getData
-(void)GetTheListData
{
    _DataAry=[[NSMutableArray alloc] initWithCapacity:10];
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"1024",@"id",@"20150126114102769.jpg",@"img", @"化妆造型：",@"name",@"预订次数:20次",@"num",@"婚汇价:￥800",@"current",@"市场价:￥1500",@"cost",nil];
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
    cell.leftImg.placeholderImage=[UIImage imageNamed:[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"img"]];
    cell.leftImg.image=[UIImage imageNamed:[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"img"]];
    cell.titleLabel.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.info1Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"num"];
    cell.info2Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"current"];
    cell.info3Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"cost"];
    CGRect rect=cell.info3Label.frame;
    rect.origin.x-=20;
    rect.size.width+=20;
    cell.info3Label.frame=rect;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NTDIYViewController *viewController=[[NTDIYViewController alloc] init];
    viewController.TheID=[[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"id"] intValue];
    viewController.title=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"name"];
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
