//
//  NTSyncConnection.m
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/20.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTSyncConnection.h"
#import "NTdefine.h"
@implementation NTSyncConnection

-(id)initWithParams:(NSMutableDictionary *)params appURL:(NSString*)url withDelegate:(id)delegate
{
    self = [super init];
    if (self)
    {
        _delegate = delegate;
        NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[[NSString stringWithFormat:@"%@?%@",url,[self getURLWithData:params]] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]] cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:DefaultTimer];
        [request setHTTPMethod:@"POST"];
        _conn= [[NSURLConnection alloc] initWithRequest:request delegate:self];
        request=nil;
    }
    return self;
}

-(void)requestCancel
{
    if (_conn)
    {
        [_conn cancel];
    }
    _delegate=nil;
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if(_data==nil)
    {
        _data=[NSMutableData dataWithCapacity:2048];
    }
    [_data appendData:data];
    data=nil;
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    if (_delegate&&[_delegate respondsToSelector:@selector(urlConnectionDidFinishLoading:didFailWithData:Error:)])
    {
        [_delegate urlConnectionDidFinishLoading:self didFailWithData:nil Error:error];
    }
    [self requestCancel];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSError *error;
    __autoreleasing NSMutableDictionary *dic=[NSJSONSerialization JSONObjectWithData:_data options:NSJSONReadingMutableLeaves error:&error];
    if (_delegate&&[_delegate respondsToSelector:@selector(urlConnectionDidFinishLoading:didSuccessWithData:)])
    {
        [_delegate urlConnectionDidFinishLoading:self didSuccessWithData:dic];
    }
    [self requestCancel];
}

-(NSString* )getURLWithData:(NSMutableDictionary *)data
{
    NSMutableString * path = [NSMutableString stringWithCapacity:4];
    NSArray * keys = [data allKeys];
    int i = 0;
    for (NSString * key in keys) {
        [path appendFormat:@"%@=%@",key,[data objectForKey:key]];
        if (i < [keys count]-1)
        {
            [path appendString:@"&"];
            i++;
        }
    }
    data=nil;
    keys=nil;
    return path;
}

@end
