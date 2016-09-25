# SQAlert
###基于UIAlertViewController的封装

    以前的UIAlertView可以随时调用，不用担心在哪个控制器调用，iOS10出现以后，
    基本上不再对7进行适配了，所以UIAlertView也逐渐被UIAlertViewController取代了，
    而UIAlertViewController的使用需要拿到当前视图，并在当前视图模态弹出UIAlertViewController。
    所以要实现一句话调用alert的关键就变成了如何拿到当前视图。
    
    主要分为两种情况：
    1. 当前视图是模态视图
    2. 当前视图是正常的push
    
    所以我们可以根据window的rootViewController拿到当前视图
    + (UIViewController *)currentViewController {
        UIWindow *window = [[UIApplication sharedApplication].delegate window];
        UIViewController *presentedVC = [[window rootViewController] presentedViewController];
        if (presentedVC) {
            return presentedVC;
        } else {
            return window.rootViewController;
        }
    }
    
    一句话调用：
    [SQAlert showAlertWithTitle:@"title" message:@"message" confirmHandle:^{
        NSLog(@"confirm");
    } cancleHandle:^{
        NSLog(@"cancle");
    }];
