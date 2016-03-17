//
//  image+labelViewController.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "image+labelViewController.h"

@interface image_labelViewController ()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation image_labelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"图片加label";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"h4.jpg"]];
    self.imageView.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:self.imageView];
    
    
    UILabel *title = [[UILabel alloc] init];
    title.text  = @"今天天气不错哦";
    title.textAlignment = NSTextAlignmentCenter;
    title.backgroundColor = [UIColor colorWithRed:79/255 green:90/255 blue:108/255 alpha:1];
    title.alpha = 0.5;
    title.font = [UIFont systemFontOfSize:17];
    title.frame = CGRectMake(0, 170, [UIScreen mainScreen].bounds.size.width, 30);
    [self.imageView addSubview:title];
    title.textColor = [UIColor whiteColor];
    
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
