//
//  AELoginingViewController.m
//  AELogining_Example
//
//  Created by Adam on 2021/4/30.
//  Copyright © 2021 296786475@qq.com. All rights reserved.
//

#import "AELoginingViewController.h"

@interface AELoginingViewController ()

@end

@implementation AELoginingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)loginWith:(NSString *)name password:(NSString *)password {
    NSLog(@"loginWith %@ - %@", name, password);
    if ([name isEqualToString:@"Adam"]&&
        [password isEqualToString:@"1234"]) {
        return YES;
    }
    return NO;
}
@end
