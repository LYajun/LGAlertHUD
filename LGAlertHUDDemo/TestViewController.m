//
//  TestViewController.m
//  LGAlertHUDDemo
//
//  Created by 刘亚军 on 2019/9/19.
//  Copyright © 2019 刘亚军. All rights reserved.
//

#import "TestViewController.h"
#import "YJVipControlView.h"
#import "YJVipControlView.h"
#import <Masonry/Masonry.h>
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIView *vipView = [UIView new];
//    vipView.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:vipView];
//    [vipView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.bottom.left.equalTo(self.view);
//        make.top.equalTo(self.view).offset(80);
//    }];
    
    
        YJVipControlView *vipView = [YJVipControlView vipControlViewWithTitleStr:@"你VIP已到期" contentStr:@"快速减肥环境是快速减肥环境是,快速减肥环境是" btnTitleStr:@"开通VIP畅听完成版" closeBlock:^{
            NSLog(@"关闭了");
        } btnClickBlock:^{
            NSLog(@"确定了");
        }];
    [vipView showOnView:self.view];
}


@end
