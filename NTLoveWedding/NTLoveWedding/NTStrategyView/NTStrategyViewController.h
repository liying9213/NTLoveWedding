//
//  NTStrategyViewController.h
//  NTLoveWedding
//
//  Created by liying on 15/4/24.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTParentViewController.h"

@interface NTStrategyViewController : NTParentViewController
{
    float height;
}
@property (nonatomic, assign) int TheID;

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong)NSMutableDictionary *TheDic;

@end
