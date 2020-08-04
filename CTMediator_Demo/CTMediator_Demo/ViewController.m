//
//  ViewController.m
//  CTMediator_Demo
//
//  Created by jz on 2020/8/3.
//  Copyright © 2020 jz. All rights reserved.
//

#import "ViewController.h"
#import "NewsViewViewContoroller.h"
#import "MovieViewViewContoroller.h"
#import "CTMediator+NewsActions.h"
#import "CTMediator+MovieActions.h"
#import <CTMediator.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)jumpTap:(UIButton *)sender {
    
    NSDictionary *params = @{
        @"titleName": @"新闻"
    };
    
    UIViewController *vc = [[CTMediator sharedInstance] pushNewsViewControllerWithParams:params];
    
    [self.navigationController pushViewController:vc animated:true];
}
- (IBAction)jumpToMovie:(UIButton *)sender {
    
    NSDictionary *params = @{
        @"titleName": @"电影",
//        kCTMediatorParamsKeySwiftTargetModuleName: "模块名称"
    };
    
    UIViewController *vc = [[CTMediator sharedInstance] pushMovieViewControllerWithParams:params];
    
    [self.navigationController pushViewController:vc animated:true];
}


@end
