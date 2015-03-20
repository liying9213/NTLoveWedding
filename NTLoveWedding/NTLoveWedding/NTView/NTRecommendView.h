//
//  NTRecommendView.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NTRecommendView;
@protocol NTRecommendViewDelegate

@required
-(void)RecommendAction:(id)sender;

@end

@interface NTRecommendView : UIView
{
    float width;
    float height;
}
@property (nonatomic ,assign)id<NTRecommendViewDelegate>delegate;

-(id)initWithFrame:(CGRect)frame withData:(id)data;

@end

