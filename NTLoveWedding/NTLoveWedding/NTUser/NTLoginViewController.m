//
//  NTLoginViewController.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/18.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTLoginViewController.h"
#import "NTRegisterViewController.h"
#import "NTForgetViewController.h"
#import "NTColor.h"
#import "NTdefine.h"
#import <POP/POP.h>
@interface NTLoginViewController ()

@end

@implementation NTLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"登录";
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
    _userNameTextField=[[UITextField alloc] initWithFrame:CGRectMake(30, 30, MainWidth, 40)];
    _userNameTextField.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    _userNameTextField.placeholder=@"输入用户名";
    [self.view addSubview:_userNameTextField];
    
    _passWordTextField=[[UITextField alloc] initWithFrame:CGRectMake(30, 80, MainWidth, 40)];
    _passWordTextField.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    _passWordTextField.placeholder=@"输入密码";
    [self.view addSubview:_passWordTextField];
    
    UIButton *loginBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.frame=CGRectMake(30, 200, MainWidth-60, 40);
    loginBtn.backgroundColor=[UIColor lightGrayColor];
    [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    UIButton *registerBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    registerBtn.frame=CGRectMake(MainWidth-93, 250, 70, 30);
    registerBtn.titleLabel.font=[UIFont systemFontOfSize:14];
    [registerBtn setTitle:@"免费注册" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [registerBtn addTarget:self action:@selector(registerButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerBtn];

    UIButton *ForgetBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    ForgetBtn.frame=CGRectMake(20, 250, 80, 30);
    ForgetBtn.titleLabel.font=[UIFont systemFontOfSize:14];
    [ForgetBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    [ForgetBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [ForgetBtn addTarget:self action:@selector(forgetButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:ForgetBtn];
}
- (void)loginButton:(id)sender
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

-(void)registerButton:(id)sender
{
    NTRegisterViewController *viewController=[[NTRegisterViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

-(void)forgetButton:(id)sender
{
    NTForgetViewController *viewController=[[NTForgetViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
