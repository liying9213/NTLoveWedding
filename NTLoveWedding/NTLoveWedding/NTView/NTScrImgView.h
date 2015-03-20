//
//  NTScrImgView.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/19.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NTScrImgView : UIView<UIScrollViewDelegate>
{
    float width;
    float height;
    UIView *scrBgView;
}
-(id)initWithFrame:(CGRect)frame withData:(id)data;

@end
