//
//  KMMNetCallBack+GetList.h
//  KMMusic
//
//  Created by ihefe－hulinhua on 16/6/2.
//  Copyright © 2016年 ihefe_hlh. All rights reserved.
//

//参数： type = 1-新歌榜,2-热歌榜,11-摇滚榜,12-爵士,16-流行,21-欧美金曲榜,22-经典老歌榜,23-情歌对唱榜,24-影视金曲榜,25-网络歌曲榜
#import "KMMNetCallBack.h"

typedef enum : NSUInteger {
    KMM_New            = 1,
    KMM_Hot            = 2,
    KMM_Rock           = 11,
    KMM_Jazz           = 12,
    KMM_Popular        = 16,
    KMM_PopChartWeekly = 21,
    KMM_Oldies         = 22,
    KMM_LoveSong       = 23,
    KMM_TVSongs        = 24,
    KMM_NetSongs       = 25

} KMMusicTypeList;

@interface KMMNetCallBack (GetList)


+ (void)getMusicListWithType:(KMMusicTypeList)MusicType success:(onSuccess)success failure:(onFailure)failure offset:(NSInteger)idx;

+ (void)getMusicRecommandSongID:(NSInteger)songID Success:(onSuccess)success failure:(onFailure)failure;



@end
