//
//  SQPresentViewController.m
//  SQAlert
//
//  Created by Huang Yanan on 2016/9/23.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import "SQPresentViewController.h"
#import "SQAlert.h"

@interface SQPresentViewController ()

@end

@implementation SQPresentViewController

+ (SQPresentViewController *)presentViewController {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showAlert:(UIButton *)sender {
    [SQAlert showAlertWithTitle:nil message:@"hello" confirmHandle:nil cancleHandle:nil];
}

@end
