//
//  KMM_FViewController.m
//  KMMusic
//
//  Created by ihefe－hulinhua on 16/6/2.
//  Copyright © 2016年 ihefe_hlh. All rights reserved.
//

#import "KMM_FViewController.h"
#import "KMMNetCallBack+GetList.h"

@interface KMM_FViewController ()

@end

@implementation KMM_FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]
                                 initWithImage:[UIImage imageNamed:@"serchBtn"]
                                 style:UIBarButtonItemStylePlain
                                 target:self
                                 action:@selector(backView)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

- (void)backView
{
    [KMMNetCallBack getMusicRecommendSuccess:^(NSNumber *successCode, id responseSuccess) {
        
        NSLog(@"asd");
        
    } failure:^(NSNumber *failureCode, NSString *errorMsg) {
        NSLog(@"asd");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
