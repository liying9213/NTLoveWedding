//
//  NTLeftImgTableViewCell.m
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTLeftImgTableViewCell.h"
#import "NTdefine.h"

@implementation NTLeftImgTableViewCell

- (id)initHaveTimeCellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self ResetView];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)ResetView
{
    _leftImg=[[EGOImageView alloc] initWithPlaceholderImage:[UIImage imageNamed:@"20141218051143669.jpg"]];
    _leftImg.frame=CGRectMake(10, 10, 112, 70);
    [self.contentView addSubview:_leftImg];
    
    _titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(_leftImg.frame.size.width+20, _leftImg.frame.origin.x, MainWidth-_leftImg.frame.size.width-30, 20)];
    _titleLabel.font=[UIFont systemFontOfSize:16];
    [self.contentView addSubview:_titleLabel];
    
    _info1Label=[[UILabel alloc] initWithFrame:CGRectMake(_titleLabel.frame.origin.x, _titleLabel.frame.origin.y+_titleLabel.frame.size.height+5, _titleLabel.frame.size.width, 20)];
    _info1Label.font=[UIFont systemFontOfSize:15];
    [self.contentView addSubview:_info1Label];
    
    _info2Label=[[UILabel alloc] initWithFrame:CGRectMake(_titleLabel.frame.origin.x, _info1Label.frame.origin.y+_info1Label.frame.size.height+5, _titleLabel.frame.size.width/5*2.8, 20)];
    _info2Label.font=[UIFont systemFontOfSize:13];
    [self.contentView addSubview:_info2Label];

    _info3Label=[[UILabel alloc] initWithFrame:CGRectMake(_info2Label.frame.origin.x+_info2Label.frame.size.width+10, _info1Label.frame.origin.y+_info1Label.frame.size.height+5, _titleLabel.frame.size.width/5*2.2, 20)];
    _info3Label.font=[UIFont systemFontOfSize:13];
    [self.contentView addSubview:_info3Label];
}

@end
