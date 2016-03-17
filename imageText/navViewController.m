//
//  navViewController.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "navViewController.h"
#import "imageTextController.h"

@interface navViewController ()

@end

@implementation navViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imageTextController *image = [[imageTextController alloc] init];
    [self addChildViewController:image];
    
    
}

//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
//}
//- (void)back
//{
//    [self.navigationController popViewControllerAnimated:YES];
//}

@end
