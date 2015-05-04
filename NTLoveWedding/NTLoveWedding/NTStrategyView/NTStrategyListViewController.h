//
//  NTStrategyListViewController.h
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTParentViewController.h"

@interface NTStrategyListViewController : NTParentViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *DataAry;

@end
