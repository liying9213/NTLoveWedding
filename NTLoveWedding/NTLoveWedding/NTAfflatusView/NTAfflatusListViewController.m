//
//  NTAfflatusListViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/23.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTAfflatusListViewController.h"
#import "TMPhotoQuiltViewCell.h"
#import "NTAfflatusViewController.h"
#import "NTdefine.h"
@interface NTAfflatusListViewController ()

@end

@implementation NTAfflatusListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"宴会灵感";
    [self setLeftItemtype:2 RightItemtype:0];
    [self ResetView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ResetView
-(void)ResetView
{
    qtmquitView = [[TMQuiltView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, self.view.frame.size.height-64)];
    qtmquitView.delegate = self;
    qtmquitView.dataSource = self;
    
    [self.view addSubview:qtmquitView];
    
    [qtmquitView reloadData];
}

- (NSMutableArray *)images
{
    if (!_images)
    {
        NSMutableArray *imageNames = [NSMutableArray array];
        for(int i = 0; i < 24; i++) {
            [imageNames addObject:[NSString stringWithFormat:@"%d.jpg", i ]];
        }
        _images = imageNames;
    }
    return _images;
}


- (UIImage *)imageAtIndexPath:(NSIndexPath *)indexPath {
    return [UIImage imageNamed:[self.images objectAtIndex:indexPath.row]];
}

- (NSInteger)quiltViewNumberOfCells:(TMQuiltView *)TMQuiltView {
    return [self.images count];
}

- (TMQuiltViewCell *)quiltView:(TMQuiltView *)quiltView cellAtIndexPath:(NSIndexPath *)indexPath {
    TMPhotoQuiltViewCell *cell = (TMPhotoQuiltViewCell *)[quiltView dequeueReusableCellWithReuseIdentifier:@"PhotoCell"];
    if (!cell) {
        cell = [[TMPhotoQuiltViewCell alloc] initWithReuseIdentifier:@"PhotoCell"];
    }
    
    cell.photoView.image = [self imageAtIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"%d", indexPath.row];
    return cell;
}

#pragma mark - TMQuiltViewDelegate

- (NSInteger)quiltViewNumberOfColumns:(TMQuiltView *)quiltView {
    
    
    if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft
        || [[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeRight)
    {
        return 3;
    } else {
        return 2;
    }
}

- (CGFloat)quiltView:(TMQuiltView *)quiltView heightForCellAtIndexPath:(NSIndexPath *)indexPath
{
    return [self imageAtIndexPath:indexPath].size.height / [self quiltViewNumberOfColumns:quiltView];
}

- (void)quiltView:(TMQuiltView *)quiltView didSelectCellAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"index:%d",indexPath.row);
    NTAfflatusViewController *viewController=[[NTAfflatusViewController alloc] init];
    viewController.TheID=indexPath.row;
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
