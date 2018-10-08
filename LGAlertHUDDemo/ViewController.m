//
//  ViewController.m
//  LGAlertUtilDemo
//
//  Created by 刘亚军 on 2018/4/11.
//  Copyright © 2018年 刘亚军. All rights reserved.
//

#import "ViewController.h"
#import "LGAlertHUD.h"
#import <UIKit/UIKit.h>

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                [LGAlert alertWarningWithMessage:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce bibendum sagittis magna" cancelBlock:nil confirmBlock:nil];
                break;
            case 1:
                [LGAlert alertTipWithMessage:@"Lorem ipsum dolor sit amet" cancelBlock:nil confirmBlock:nil];
                break;
            case 2:
                [LGAlert alertSuccessWithMessage:@"Lorem ipsum dolor sit amet" cancelBlock:nil confirmBlock:nil];
                break;
            case 3:
                [LGAlert alertWithTitle:@"警告!" message:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce bibendum sagittis magna" cancelBlock:nil confirmBlock:nil];
                break;
            case 4:
                [LGAlert alertWithTitle:@"提示" message:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce bibendum sagittis magna" cancelBlock:nil confirmBlock:nil];
                break;
            case 5:
            {
                NSMutableAttributedString *msg = [[NSMutableAttributedString alloc] initWithString:@"这里是正文信息"];
                [msg addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:24] range:NSMakeRange(0, 2)];
                [msg addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
                [LGAlert alertWithTitle:@"富文本" attributeMsg:msg canceTitle:nil confirmTitle:@"确定" cancelBlock:nil confirmBlock:nil];
            }
                break;
            default:
                break;
        }
    }else if (indexPath.section == 1){
        switch (indexPath.row) {
            case 0:
                [LGAlert alertSheetWithTitle:@"标题" message:@"Lorem ipsum dolor sit amet" canceTitle:@"取消" confirmTitle:@"确定" cancelBlock:nil confirmBlock:nil atController:self];
                break;
            case 1:
                [LGAlert alertSheetWithTitle:@"标题" message:@"Lorem ipsum dolor sit amet" canceTitle:@"取消" buttonTitles:@[@"button1",@"button2"] buttonBlock:^(NSInteger index) {
                    NSLog(@"点击:%li",index);
                } cancelBlock:nil atController:self];
                break;
            default:
                break;
        }
    }else{
        switch (indexPath.row) {
            case 0:
                [LGAlert showIndeterminate];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [LGAlert hide];
                });
                break;
            case 1:
                [LGAlert showSuccessWithStatus:@"操作成功"];
                break;
            case 2:
                [LGAlert showErrorWithStatus:@"操作失败"];
                break;
            case 3:
                [LGAlert showInfoWithStatus:@"操作无效"];
                break;
            case 4:
                [LGAlert showStatus:@"网络断开了"];
                break;
            case 5:
                [LGAlert showRedStatus:@"作答时间到"];
                break;
            case 6:
                [LGAlert showBarDeterminateWithProgress:0.5];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [LGAlert hide];
                });
                break;
            default:
                break;
        }
    }
}


@end