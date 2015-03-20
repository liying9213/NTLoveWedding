//
//  NTSelectView.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTSelectView.h"
#import "NTColor.h"
@implementation NTSelectView

-(id)initWithFrame:(CGRect)frame withData:(id)data
{
    self=[super initWithFrame:frame];
    if (self) {
        width=self.frame.size.width;
        height=self.frame.size.height;
        self.backgroundColor=[NTColor colorWithHexString:@"#FFECF5"];
        [self ResetViewWith:data];
    }
    return self;
}

-(void)ResetViewWith:(id)data
{
    float value=(width-60*4)/5;
    for (int i=0; i<4; i++)
    {
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor=[NTColor colorWithHexString:@"#FF60AF"];
        btn.frame=CGRectMake((60+value)*i+value, 16, 60, 60);
        btn.tag=i;
        [btn addTarget:_delegate action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.layer.masksToBounds=YES;
        btn.layer.cornerRadius=30;
        [self addSubview:btn];
    }
}

@end
