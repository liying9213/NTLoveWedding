//
//  NTDataService.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTDataService.h"

@implementation NTDataService
-(void)RequestBookListWithData:(id)data withURL:(NSString *)TheUrl
{
    if (_DataConnection)
    {
        _DataConnection=nil;
    }
    _DataConnection=[[NTSyncConnection alloc] initWithParams:data appURL:TheUrl withDelegate:self];
    
}
-(void)urlConnectionDidFinishLoading:(NTSyncConnection *)connection didSuccessWithData:(NSMutableDictionary *)data
{
    
}
-(void)urlConnectionDidFinishLoading:(NTSyncConnection *)connection didFailWithData:(NSMutableDictionary *)data Error:(NSError *)error
{
    
}

-(void)requestCancel
{
    if (_DataConnection)
    {
        [_DataConnection requestCancel];
        _DataConnection.delegate=nil;
        _DataConnection=nil;
    }
}
@end
