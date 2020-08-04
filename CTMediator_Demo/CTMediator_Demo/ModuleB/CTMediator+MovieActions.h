//
//  CTMediator+MovieActions.h
//  CTMediator_Demo
//
//  Created by jz on 2020/8/3.
//  Copyright © 2020 jz. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (MovieActions)

- (UIViewController *)pushMovieViewControllerWithParams:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
