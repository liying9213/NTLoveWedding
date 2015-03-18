//
//  NTLoginViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/18.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTLoginViewController.h"

@interface NTLoginViewController ()

@end

@implementation NTLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftItemtype:2 RightItemtype:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
