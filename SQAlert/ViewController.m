//
//  ViewController.m
//  SQAlert
//
//  Created by Huang Yanan on 2016/9/23.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import "ViewController.h"
#import "SQPresentViewController.h"
#import "SQAlert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)presentAction:(UIButton *)sender {
    SQPresentViewController *presentViewController = [SQPresentViewController presentViewController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:presentViewController];
    [self presentViewController:nav animated:YES completion:nil];
}

- (IBAction)showAlert:(UIButton *)sender {
    [SQAlert showAlertWithTitle:nil message:@"hello" confirmHandle:nil cancleHandle:nil];
}

@end
