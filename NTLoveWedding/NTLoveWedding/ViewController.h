//
//  ViewController.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/16.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NTParentViewController.h"
#import "NTSelectView.h"
#import "NTRecommendView.h"
@interface ViewController : NTParentViewController<NTSelectViewDelegate,NTRecommendViewDelegate>
{
    float height;
}
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@end

