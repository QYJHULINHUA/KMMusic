//
//  KMMNetCallBack+GetList.m
//  KMMusic
//
//  Created by ihefe－hulinhua on 16/6/2.
//  Copyright © 2016年 ihefe_hlh. All rights reserved.
//

#import "KMMNetCallBack+GetList.h"

@implementation KMMNetCallBack (GetList)

+ (void)getMusicListWithType:(KMMusicTypeList)MusicType success:(onSuccess)success failure:(onFailure)failure offset:(NSInteger)idx
{
    AFHTTPSessionManager *manager = [KMMNetCallBack getHttpManager];
    NSDictionary *paran = @{@"method":@"baidu.ting.billboard.billList",@"type":@(MusicType),@"size":@10,@"offset":@(idx)};
    
    [manager GET:BaseUrl parameters:paran progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success ([NSNumber numberWithInt:1],responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (success) {
            success ([NSNumber numberWithInteger:error.code],error.localizedFailureReason);
        }
    }];
    
}

+ (void)getMusicRecommandSongID:(NSInteger)songID Success:(onSuccess)success failure:(onFailure)failure
{
     AFHTTPSessionManager *manager = [KMMNetCallBack getHttpManager];
    NSDictionary *paran = @{@"method":@"baidu.ting.song.getRecommandSongList",@"song_id":@(songID),@"num":@10};
    [manager GET:BaseUrl parameters:paran progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success ([NSNumber numberWithInt:1],responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (success) {
            success ([NSNumber numberWithInteger:error.code],error.localizedFailureReason);
        }
    }];
    
}



@end
