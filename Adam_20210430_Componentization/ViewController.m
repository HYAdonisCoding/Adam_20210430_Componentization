//
//  ViewController.m
//  Adam_20210430_Componentization
//
//  Created by Adam on 2021/4/30.
//

#import "ViewController.h"
#import <AELogining/AELoginingViewController.h>
#import <AEAnimations/AEAnimationView.h>
#import <MGJRouter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    // 注册一个组件(一般在启动的时候去注册)
        [MGJRouter registerURLPattern:@"mgj://login?id=:id&name=:name&password=:password" toHandler:^(NSDictionary *dic) {
            NSString * oneId = dic[@"id"];
            NSString * name  = dic[@"name"];
            NSString * password = dic[@"password"];
            if (oneId && name) {
                //创建组件，并从字典拿到值
                AELoginingViewController * login = [[AELoginingViewController alloc] init];
                [login loginWith:name password:password];
            }
        }];

        // 外界去调用 执行一个组件
        [MGJRouter openURL:@"mgj://login?id=5&name=Adam&password=123456"];
        // 打印出:
}


@end
