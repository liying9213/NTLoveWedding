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
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        width=self.frame.size.width;
        height=self.frame.size.height;
    }
    return self;
}

-(void)ResetViewAndLabelWith:(id)data
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
                str=@"20150113094734766.jpg";
                str2=@"24,841\n成功";
            }
                break;
            case 1:
            {
                str=@"20150113094946473.jpg";
                str2=@"93,643\n加入";
            }
                break;
            case 2:
            {
                str=@"20150116012703220.jpg";
                str2=@"761,972\n成功";
            }
                break;
            default:
                break;
        }
        EGOImageButton *sonButton=[[EGOImageButton alloc] initWithPlaceholderImage:[UIImage imageNamed:str]];
        sonButton.frame=CGRectMake(width*i,0 , width, height);
        [sonButton addTarget:self action:@selector(openTheHeadView:) forControlEvents:UIControlEventTouchUpInside];
        sonButton.tag=i;
        [headScroll addSubview:sonButton];
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

-(void)ResetViewWith:(id)data
{
    UIScrollView *headScroll=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    headScroll.tag=1024;
    headScroll.backgroundColor=[UIColor clearColor];
    headScroll.showsHorizontalScrollIndicator=NO;
    headScroll.showsVerticalScrollIndicator=NO;
    headScroll.pagingEnabled=YES;
    headScroll.delegate=self;
    for (int i=0; i<[data count]; i++)
    {
        EGOImageButton *sonButton=[[EGOImageButton alloc] initWithPlaceholderImage:[UIImage imageNamed:[data objectAtIndex:i]]];
        sonButton.frame=CGRectMake(width*i,0 , width, height);
        [sonButton addTarget:self action:@selector(openTheHeadView:) forControlEvents:UIControlEventTouchUpInside];
        sonButton.tag=i;
        [headScroll addSubview:sonButton];
    }
    headScroll.contentSize=CGSizeMake(width*[data count], 0);
    [self addSubview:headScroll];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    scrBgView.frame=CGRectMake(scrollView.contentOffset.x/3, 48, width/3, 2);
}

-(void)openTheHeadView:(id)sender
{
    [_delegate openTheHeadView:sender];
}

@end
