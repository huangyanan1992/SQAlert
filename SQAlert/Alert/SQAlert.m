//
//  SQAlert.m
//  SQTaxi
//
//  Created by Huang Yanan on 2016/9/23.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import "SQAlert.h"

@implementation SQAlert

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmHandle:(SQAlertConfirmHandle)confirmHandle cancleHandle:(SQAlertCancleHandle)cancleHandle {
   UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (cancleHandle) {
            cancleHandle();
        }
    }];
    UIAlertAction *confirAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (confirmHandle) {
            confirmHandle();
        }
    }];
    [alertVC addAction:cancleAction];
    [alertVC addAction:confirAction];
    [[SQAlert currentViewController] presentViewController:alertVC animated:YES completion:nil];
}

+ (UIViewController *)currentViewController {
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    UIViewController *presentedVC = [[window rootViewController] presentedViewController];
    if (presentedVC) {
        return presentedVC;
        
    } else {
        return window.rootViewController;
    }
}

@end
