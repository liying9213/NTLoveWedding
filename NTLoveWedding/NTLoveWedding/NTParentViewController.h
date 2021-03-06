//
//  NTParentViewController.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/16.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MBProgressHUD/MBProgressHUD.h>
@interface NTParentViewController : UIViewController<UIGestureRecognizerDelegate>
{
    MBProgressHUD *_waitingView;
}

-(void)setLeftItemtype:(int )LeftType RightItemtype:(int )RightType;

-(void)showWaitingView:(NSString *)str;
-(void)showEndText:(NSString *)str;
-(void)hideWaitingView;

@end
