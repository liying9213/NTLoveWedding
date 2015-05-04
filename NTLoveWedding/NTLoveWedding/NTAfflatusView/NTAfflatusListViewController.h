//
//  NTAfflatusListViewController.h
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTParentViewController.h"
#import "TMQuiltView.h"
#import "TMPhotoQuiltViewCell.h"
@interface NTAfflatusListViewController : NTParentViewController<TMQuiltViewDataSource,TMQuiltViewDelegate>
{
    TMQuiltView *qtmquitView;
}
@property (nonatomic, retain) NSMutableArray *images;
@end
