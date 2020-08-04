//
//  Target_Movie.m
//  CTMediator_Demo
//
//  Created by jz on 2020/8/3.
//  Copyright © 2020 jz. All rights reserved.
//

#import "Target_Movie.h"
#import "MovieViewViewContoroller.h"

@implementation Target_Movie

- (UIViewController *)Action_NativeToCTMediatorPushViewController:(NSDictionary *)params {
    
    MovieViewViewContoroller *pushVC = [[MovieViewViewContoroller alloc]init];
    if ([params valueForKey:@"titleName"]) {
        pushVC.titleName = params[@"titleName"];
    }
    return pushVC;
    
}

@end
