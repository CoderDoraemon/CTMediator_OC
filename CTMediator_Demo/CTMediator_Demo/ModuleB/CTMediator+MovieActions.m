//
//  CTMediator+MovieActions.m
//  CTMediator_Demo
//
//  Created by jz on 2020/8/3.
//  Copyright © 2020 jz. All rights reserved.
//

#import "CTMediator+MovieActions.h"

@implementation CTMediator (MovieActions)

- (UIViewController *)pushMovieViewControllerWithParams:(NSDictionary *)params {
    
    //  1. kCTMediatorTarget_Name字符串 是 Target_xxx.h 中的 xxx 部分
    NSString * const kCTMediatorTarget_Name = @"Movie";
    //  2. kCTMediatorAction_Name 是 Target_xxx.h 中 定义的 Action_xxx 函数名的 xxx 部分
    NSString * const kCTMediatorAction_Name = @"NativeToCTMediatorPushViewController";
    
    BaseViewController *vc = [self performTarget:kCTMediatorTarget_Name action:kCTMediatorAction_Name params:params shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    } else {
        return [[UIViewController alloc] init];
    }
}

@end
