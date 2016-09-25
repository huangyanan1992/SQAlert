//
//  SQAlert.h
//  SQTaxi
//
//  Created by Huang Yanan on 2016/9/23.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^SQAlertConfirmHandle)();
typedef void(^SQAlertCancleHandle)();

@interface SQAlert : NSObject

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmHandle:(SQAlertConfirmHandle)confirmHandle cancleHandle:(SQAlertCancleHandle)cancleHandle;

@end
