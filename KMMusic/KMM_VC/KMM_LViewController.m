//
//  KMM_LViewController.m
//  KMMusic
//
//  Created by ihefe－hulinhua on 16/7/4.
//  Copyright © 2016年 ihefe_hlh. All rights reserved.
//

#import "KMM_LViewController.h"
#import "KMM_PlayerVC.h"

@interface KMM_LViewController ()
{
    KMM_PlayerVC *playerVC;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation KMM_LViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    playerVC = [[KMM_PlayerVC alloc] init];
    playerVC.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:playerVC.view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(UIButton *)sender {
    
}

//YOU
- (IBAction)left:(UIButton *)sender {
    
}

//zuo
- (IBAction)realarLeft:(id)sender {
    
    
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
