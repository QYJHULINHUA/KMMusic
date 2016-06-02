//
//  KMMNetCallBack.h
//  KMMusic
//
//  Created by ihefe－hulinhua on 16/6/2.
//  Copyright © 2016年 ihefe_hlh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

#define BaseUrl @"http://tingapi.ting.baidu.com/v1/restserver/ting?from=webapp_music"

@interface KMMNetCallBack : NSObject


//>! 网络成功
typedef void(^onSuccess)(NSNumber *successCode,id responseSuccess);

//>! 网络失败
typedef void(^onFailure)(NSNumber *failureCode,NSString *errorMsg);

+ (AFHTTPSessionManager*)getHttpManager;


@end
