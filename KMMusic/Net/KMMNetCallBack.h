//
//  KMMNetCallBack.h
//  KMMusic
//
//  Created by ihefe－hulinhua on 16/6/2.
//  Copyright © 2016年 ihefe_hlh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"


@interface KMMNetCallBack : NSObject



@property (strong) void (^onPreExecute)();

@property (strong) void (^onSuccess)(long status, NSString* responseString);

@property (strong) void (^onError)(long status, NSString* responseString);

@property (strong) void (^onComplete)();



@end
