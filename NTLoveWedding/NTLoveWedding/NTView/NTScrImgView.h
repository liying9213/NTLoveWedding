//
//  NTScrImgView.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/19.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EGOImageLoading/EGOImageButton.h>
@interface NTScrImgView : UIView<UIScrollViewDelegate>
{
    float width;
    float height;
    UIView *scrBgView;
}
@property (nonatomic, assign) id delegate;
-(id)initWithFrame:(CGRect)frame;
-(void)ResetViewAndLabelWith:(id)data;
-(void)ResetViewWith:(id)data;

@end
