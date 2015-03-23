//
//  NTLoginViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/18.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTLoginViewController.h"
#import <POP/POP.h>
@interface NTLoginViewController ()

@end

@implementation NTLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftItemtype:2 RightItemtype:0];
    [self ResetView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(void)ResetView
{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(100, 200, 100, 50);
    btn.backgroundColor=[UIColor lightGrayColor];
    [btn addTarget:self action:@selector(shakeButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)shakeButton:(id)sender
{
    UIButton *btn=(UIButton *)sender;
    
    POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    positionAnimation.velocity = @2000;
    positionAnimation.springBounciness = 20;
    [positionAnimation setCompletionBlock:^(POPAnimation *animation, BOOL finished) {
        btn.userInteractionEnabled = YES;
    }];
    [btn.layer pop_addAnimation:positionAnimation forKey:@"positionAnimation"];
}

@end
