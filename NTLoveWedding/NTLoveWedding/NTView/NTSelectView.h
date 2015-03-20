//
//  NTSelectView.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NTSelectView;
@protocol NTSelectViewDelegate

@required
-(void)selectAction:(id)sender;

@end

@interface NTSelectView : UIView
{
    float width;
    float height;
}
@property (nonatomic ,assign)id<NTSelectViewDelegate>delegate;

-(id)initWithFrame:(CGRect)frame withData:(id)data;

@end
