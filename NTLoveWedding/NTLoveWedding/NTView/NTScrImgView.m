//
//  NTScrImgView.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/19.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTScrImgView.h"
#import "NTdefine.h"
#import "NTColor.h"
@implementation NTScrImgView
-(id)initWithFrame:(CGRect)frame withData:(id)data
{
    self=[super initWithFrame:frame];
    if (self) {
        width=self.frame.size.width;
        height=self.frame.size.height;
        [self ResetViewWith:data];
    }
    return self;
}

-(void)ResetViewWith:(id)data
{
    UIScrollView *headScroll=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    headScroll.tag=1024;
    headScroll.backgroundColor=[UIColor clearColor];
    headScroll.showsHorizontalScrollIndicator=NO;
    headScroll.showsVerticalScrollIndicator=NO;
    headScroll.pagingEnabled=YES;
    headScroll.delegate=self;
    NSString *str;
    NSString *str2;
    for (int i=0; i<3; i++)
    {
        switch (i)
        {
            case 0:
            {
                str=@"#BE77FF";
                str2=@"24,841\n成功";
            }
                break;
            case 1:
            {
                str=@"#FF5151";
                str2=@"93,643\n加入";
            }
                break;
            case 2:
            {
                str=@"#84C1FF";
                str2=@"761,972\n成功";
            }
                break;
            default:
                break;
        }
        UIView *sonView=[[UIView alloc] initWithFrame:CGRectMake(width*i,0 , width, height)];
        sonView.backgroundColor=[NTColor colorWithHexString:str];
        [headScroll addSubview:sonView];
    }
    headScroll.contentSize=CGSizeMake(width*3, 0);
    [self addSubview:headScroll];
    UIView *contentView=[[UIView alloc] initWithFrame:CGRectMake(0, height-50, width, 50)];
    contentView.backgroundColor=[UIColor clearColor];
    UIView *bgView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 50)];
    bgView.backgroundColor=[NTColor colorWithHexString:NTWhiteColor];
    bgView.alpha=0.8;
    [contentView addSubview:bgView];
    [self addSubview:contentView];
    for (int i=0; i<3; i++)
    {
        switch (i)
        {
            case 0:
            {
                str2=@"24,841\n成功";
            }
                break;
            case 1:
            {
                str2=@"93,643\n加入";
            }
                break;
            case 2:
            {
                str2=@"761,972\n成功";
            }
                break;
            default:
                break;
        }
        UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(width/3*i, 0, width/3, 50)];
        titleLabel.text=str2;
        titleLabel.numberOfLines=0;
        titleLabel.textAlignment=NSTextAlignmentCenter;
        titleLabel.lineBreakMode=NSLineBreakByWordWrapping;
        [contentView addSubview:titleLabel];
    }
    scrBgView=[[UIView alloc] initWithFrame:CGRectMake(0, 48, width/3, 2)];
    scrBgView.backgroundColor=[NTColor colorWithHexString:@"#FF60AF"];
    [contentView addSubview:scrBgView];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    scrBgView.frame=CGRectMake(scrollView.contentOffset.x/3, 48, width/3, 2);
}

@end
