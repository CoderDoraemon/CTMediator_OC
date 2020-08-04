//
//  Target_News.m
//  CTMediator_Demo
//
//  Created by jz on 2020/8/3.
//  Copyright © 2020 jz. All rights reserved.
//

#import "Target_News.h"
#import "NewsViewViewContoroller.h"

@implementation Target_News

- (UIViewController *)Action_NativeToCTMediatorPushViewController:(NSDictionary *)params {
    
    NewsViewViewContoroller *pushVC = [[NewsViewViewContoroller alloc]init];
    if ([params valueForKey:@"titleName"]) {
        pushVC.titleName = params[@"titleName"];
    }
    return pushVC;
    
}

@end
