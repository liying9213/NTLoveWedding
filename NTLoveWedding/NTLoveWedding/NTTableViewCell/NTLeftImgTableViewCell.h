//
//  NTLeftImgTableViewCell.h
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EGOImageLoading/EGOImageView.h>
@interface NTLeftImgTableViewCell : UITableViewCell

@property (nonatomic, strong) EGOImageView *leftImg;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *info1Label;
@property (nonatomic, strong) UILabel *info2Label;
@property (nonatomic, strong) UILabel *info3Label;


- (id)initHaveTimeCellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;


@end
