//
//  NTPlaceListViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTPlaceListViewController.h"
#import "NTLeftImgTableViewCell.h"
#import "NTPlaceViewController.h"
@interface NTPlaceListViewController ()

@end

@implementation NTPlaceListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"宴会场地";
    [self setLeftItemtype:2 RightItemtype:0];
    [self ResetTableView];
    [self GetTheListData];
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
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"1024",@"id",@"20141218051143669.jpg",@"img", @"东长安饭店",@"name",@"四星级酒店",@"type",@"2980-3388 元/桌",@"price",@"1-22 桌",@"size",nil];
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
    cell.titleLabel.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.info1Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"type"];
    cell.info2Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"price"];
    cell.info3Label.text=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"size"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NTPlaceViewController *viewController=[[NTPlaceViewController alloc] init];
    viewController.TheID=[[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"id"] intValue];
    viewController.title=[[_DataAry objectAtIndex:indexPath.row] objectForKey:@"name"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
