//
//  AEAnimationView.m
//  AEAnimations_Example
//
//  Created by Adam on 2021/4/30.
//  Copyright © 2021 296786475@qq.com. All rights reserved.
//

#import "AEAnimationView.h"

@implementation AEAnimationView

+ (void)animations:(void (^)(void))animations {
    NSLog(@"animations coming...");
    animations();
}

@end
