//
//  ViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/16.
//  Copyright (c) 2015年 liying. All rights reserved.
//
#import "NTdefine.h"
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
    
}

- (void)ResetHeadView
{
    UIScrollView *headScroll=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, 100)];
    for (int i=0; i<3; i++) {
        
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
