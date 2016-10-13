//
//  ViewController2.m
//  SQAlert
//
//  Created by Huang Yanan on 2016/10/10.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import "ViewController2.h"
#import "SQAlert.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showAlert:(id)sender {
    [SQAlert showAlertWithTitle:@"title" message:@"message" confirmHandle:^{
        NSLog(@"confirm");
    } cancleHandle:^{
        NSLog(@"cancle");
    }];
}


@end
