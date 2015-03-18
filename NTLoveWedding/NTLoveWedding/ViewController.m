//
//  ViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/16.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "ViewController.h"
#import "NTLoginViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftItemtype:1 RightItemtype:1];
    self.title=@"000000";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NavigationAction

-(void)localAction:(id)sender
{
    
}
-(void)userAction:(id)sender
{
    NTLoginViewController *viewController=[[NTLoginViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
