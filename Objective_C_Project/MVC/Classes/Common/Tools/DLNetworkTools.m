//
//  DLNetworkTools.m
//  DLNetEaseNews
//
//  Created by NowOrNever on 11/03/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "DLNetworkTools.h"

@implementation DLNetworkTools

+ (instancetype)sharedNetWorkTools{
    static DLNetworkTools *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] initWithBaseURL:[NSURL URLWithString:@"http://c.m.163.com/nc/article/list/"]];
    });
    return instance;
}

- (void)requestWithType:(DLRequestType)requestType andUrlString:(NSString *)urlString andParams:(id)parameters andSuccess:(void (^)(id))successBlock andFailture:(void (^)(NSError *))failtureBlock{
    if (requestType == DLRequestTypeGET) {
        [self GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            successBlock(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failtureBlock(error);
        }];
    }else if (requestType == DLRequestTypePOST){
        [self POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            successBlock(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failtureBlock(error);
        }];
    }
    
//    [AFHTTPSessionManager manager] GET:<#(nonnull NSString *)#> parameters:<#(nullable id)#> progress:<#^(NSProgress * _Nonnull downloadProgress)downloadProgress#> success:<#^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)success#> failure:<#^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)failure#>
}

@end
