//
//  NTSyncConnection.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NTSyncConnection;
@protocol NTSyncConnectionDelegate
@optional
-(void)urlConnectionDidFinishLoading:(NTSyncConnection *)connection didSuccessWithData:(NSMutableDictionary *)data;
@optional
-(void)urlConnectionDidFinishLoading:(NTSyncConnection *)connection didFailWithData:(NSMutableDictionary *)data Error:(NSError *)error;
@end
@interface NTSyncConnection : NSObject<NSURLConnectionDelegate,NSURLConnectionDataDelegate>
{
    NSURLConnection * _conn;
    NSMutableData * _data;
}
@property (nonatomic,assign) id delegate;

-(id)initWithParams:(NSMutableDictionary *)params appURL:(NSString*)url withDelegate:(id)delegate;

-(void)requestCancel;
@end
