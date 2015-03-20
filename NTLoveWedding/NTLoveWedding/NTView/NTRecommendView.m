//
//  NTRecommendView.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTRecommendView.h"
#import "NTColor.h"
#import "NTdefine.h"
@implementation NTRecommendView

-(id)initWithFrame:(CGRect)frame withData:(id)data
{
    self=[super initWithFrame:frame];
    if (self) {
        width=self.frame.size.width;
        height=self.frame.size.height;
        self.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
        [self ResetViewWith:data];
    }
    return self;
}

-(void)ResetViewWith:(id)data
{
    float iWidth=2;
    float iHeight=2;
    float value=0;
    for (int i=0; i<6; i++)
    {
        UIView *view=[[UIView alloc] initWithFrame:CGRectMake(iWidth, iHeight, (width-6)/2, 70+value)];
        [self addSubview:view];
        switch (i) {
            case 0:
            {
                view.backgroundColor=[NTColor colorWithHexString:@"#BE77FF"];
            }
                break;
            case 1:
            {
                view.backgroundColor=[NTColor colorWithHexString:@"#FF5151"];
                value=30;
            }
                break;
            case 2:
            {
                view.backgroundColor=[NTColor colorWithHexString:@"#84C1FF"];
            }
                break;
            case 3:
            {
                view.backgroundColor=[NTColor colorWithHexString:@"#7AFEC6"];
            }
                break;
            case 4:
            {
                view.backgroundColor=[NTColor colorWithHexString:@"#FFFF6F"];
            }
                break;
            case 5:
            {
                view.backgroundColor=[NTColor colorWithHexString:@"#FF9D6F"];
            }
                break;
            default:
                break;
        }
        iWidth+=view.frame.size.width+2;
        if (iWidth==width) {
            iWidth=2;
            iHeight+=view.frame.size.height+2;
        }
    }
}
@end
