//
//  NTParentViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/16.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTParentViewController.h"
#import "NTColor.h"
#import "NTImage.h"
#import "NTdefine.h"
@interface NTParentViewController ()

@end

@implementation NTParentViewController
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController.topViewController setNeedsStatusBarAppearanceUpdate];
    [self setNeedsStatusBarAppearanceUpdate];
    self.navigationController.navigationBar.barStyle=UIBarStyleBlack;
    [[self.navigationController navigationBar] setBackgroundImage:[NTImage imageWithFileName:@"HeaderBg_7.png"] forBarMetrics:UIBarMetricsDefault];
    
    if (self.navigationController.viewControllers.count > 1)
    {
        self.navigationController.interactivePopGestureRecognizer.delegate = self;
    }
    self.navigationController.interactivePopGestureRecognizer.enabled=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 *leftType
 * 0:空
 * 1:位置
 * 2:返回
 *
 *
 *rightType
 * 0:空
 * 1:用户
 *
 *
 *
 */
-(void)setLeftItemtype:(int)LeftType RightItemtype:(int)RightType
{
    UIView * leftView = [[UIView alloc] initWithFrame:CGRectZero];
    leftView.backgroundColor = [UIColor clearColor];
    UIBarButtonItem *spaceButtonItem = [[UIBarButtonItem alloc]
                                       initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                       target:nil action:nil];
    spaceButtonItem.width = -10;
    UIBarButtonItem * _leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftView];
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:spaceButtonItem, _leftBarButtonItem, nil];
    _leftBarButtonItem=nil;
    switch (LeftType)
    {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            UIButton * _localBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            _localBtn.frame = CGRectMake(7, 7, 30, 30);
            [_localBtn setImage:[NTImage imageWithFileName:@"icon_tabbar_nearby_selected.png"] forState:UIControlStateNormal];
            [_localBtn setImage:[NTImage imageWithFileName:@"icon_tabbar_nearby.png"] forState:UIControlStateHighlighted];
            [_localBtn addTarget:self action:@selector(localAction:) forControlEvents:UIControlEventTouchUpInside];
//            [_localBtn setTitle:@"北京" forState:UIControlStateNormal];
//            [_localBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
//            _localBtn.titleLabel.font=[UIFont systemFontOfSize:14];
//            _localBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//            _localBtn.contentEdgeInsets = UIEdgeInsetsMake(2,4, 0, 0);
            _localBtn.backgroundColor = [UIColor clearColor];
            [leftView addSubview:_localBtn];
            leftView.frame = CGRectMake(0, 0, 44, 44);
            _localBtn = nil;
        }
            break;
        case 2:
        {
            UIButton * _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            _backBtn.frame = CGRectMake(0, 0, 44, 44);
            [_backBtn setImage:[NTImage imageWithFileName:@"btn_backItem.png"] forState:UIControlStateNormal];
            [_backBtn setImage:[NTImage imageWithFileName:@"btn_backItem_highlighted.png"] forState:UIControlStateHighlighted];
            [_backBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
            _backBtn.backgroundColor = [UIColor clearColor];
            [leftView addSubview:_backBtn];
            leftView.frame = CGRectMake(0, 0, 44, 44);
            _backBtn = nil;
        }
            break;
        default:
            break;
    }
    if (RightType!=0)
    {
        UIView * rightView = [[UIView alloc] initWithFrame:CGRectZero];
        rightView.backgroundColor = [UIColor clearColor];
        UIBarButtonItem *bar=[[UIBarButtonItem alloc] initWithCustomView:rightView];
        self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:spaceButtonItem, bar, nil];
        bar=nil;
        switch (RightType)
        {
            case 1:
            {
                UIButton * _userBtn = [UIButton buttonWithType:UIButtonTypeCustom];
                _userBtn.frame = CGRectMake(7, 7, 30, 30);
                [_userBtn setImage:[NTImage imageWithFileName:@"icon_tabbar_mine_selected.png"] forState:UIControlStateNormal];
                [_userBtn setImage:[NTImage imageWithFileName:@"icon_tabbar_mine.png"] forState:UIControlStateHighlighted];
                [_userBtn addTarget:self action:@selector(userAction:) forControlEvents:UIControlEventTouchUpInside];
                _userBtn.backgroundColor = [UIColor clearColor];
                [rightView addSubview:_userBtn];
                rightView.frame = CGRectMake(0, 0, 44, 44);
                _userBtn = nil;
            }
                break;
                
            default:
                break;
        }
    }
    
    
    
}

-(void)backAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.navigationController.viewControllers.count == 1)//关闭主界面的右滑返回
    {
        return NO;
    }
    else
    {
        NSLog(@"======");
        return YES;
    }
}

#pragma mark - waitingView
-(void)showWaitingView:(NSString *)str
{
    if (!_waitingView)
    {
        _waitingView = [[MBProgressHUD alloc] initWithView:self.view];
        [self.view addSubview:_waitingView];
    }
    if (str==nil)
    {
        str=@"正在请求...";
    }
    _waitingView.labelText = str;
    [_waitingView show:YES];
}
-(void)hideWaitingView
{
    [_waitingView hide:YES];
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
