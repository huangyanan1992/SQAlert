# SQAlert
###基于UIAlertViewController的封装，一句话调用
    [SQAlert showAlertWithTitle:@"title" message:@"message" confirmHandle:^{
        NSLog(@"confirm");
    } cancleHandle:^{
        NSLog(@"cancle");
    }];
