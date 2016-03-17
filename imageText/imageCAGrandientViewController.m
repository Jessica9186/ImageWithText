//
//  imageCAGrandientViewController.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "imageCAGrandientViewController.h"
#import "graidentLayerImageView.h"

@interface imageCAGrandientViewController ()
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) CAGradientLayer *gradientLayer;

@property (strong, nonatomic) graidentLayerImageView *imagesView;
@end

@implementation imageCAGrandientViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"颜色渐变效果";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
//    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"h4.jpg"]];
//    
//    self.imageView.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
//    [self.view addSubview:self.imageView];
//    
//
//    CAGradientLayer *layer = [CAGradientLayer layer];
//    layer.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200);
//    layer.colors = @[(__bridge id)[UIColor colorWithRed:0 green:0 blue:0 alpha:0].CGColor,
//                     (__bridge id)[UIColor colorWithRed:0 green:0 blue:0 alpha:1.0].CGColor
//                     ];
//    self.gradientLayer = layer;
//    layer.startPoint = CGPointMake(0, 0);
//    layer.endPoint   = CGPointMake(0, 1);
//    layer.locations = @[@(0.6),@(1)];
//
//    [self.imageView.layer addSublayer:self.gradientLayer];
    
    
    self.imagesView = [[graidentLayerImageView alloc] initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200)];
    self.imagesView.image = [UIImage imageNamed:@"h4.jpg"];
    [self.view addSubview:self.imagesView];
    
    self.imagesView.titles = @"程序媛成长记录渐变效果";
//    UILabel *label = [[UILabel alloc] init];
//    label.text = @"程序媛成长记录渐变效果";
//    label.textColor = [UIColor whiteColor];
//    label.frame = CGRectMake(0, 170, [UIScreen mainScreen].bounds.size.width, 30);
//    label.font = [UIFont systemFontOfSize:15];
//    label.textAlignment = NSTextAlignmentCenter;
//    [self.imageView addSubview:label];
    
//    [self.imagesView addSubview:label];

}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
