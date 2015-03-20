//
//  NTDataService.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NTSyncConnection.h"
@class NTDataService;
@protocol NTDataServiceDelegate
@optional
-(void)BookRequestSucceedWithData:(id)data withRequestSrvice:(NTDataService *)service;
@optional
-(void)BookRequestFailWithMessage:(id)data withRequestSrvice:(NTDataService *)service;

@end

@interface NTDataService : NSObject<NTSyncConnectionDelegate>
{
    NTSyncConnection *_DataConnection;
}
@property (nonatomic,assign)id delegate;
-(void)RequestBookListWithData:(id)data withURL:(NSString *)TheUrl;
-(void)requestCancel;

@end
