//
//  DLNetworkTools.h
//  DLNetEaseNews
//
//  Created by NowOrNever on 11/03/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
typedef enum : NSUInteger{
    DLRequestTypeGET,
    DLRequestTypePOST
} DLRequestType;

@interface DLNetworkTools : AFHTTPSessionManager

+ (instancetype)sharedNetWorkTools;

- (void)requestWithType:(DLRequestType)requestType andUrlString:(NSString *)urlString andParams:(id)parameters andSuccess:(void(^)(id responseObject))successBlock andFailture:(void(^)(NSError *error))failtureBlock;

@end
