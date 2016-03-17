//
//  imageEffectViewController.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "imageEffectViewController.h"
#import "imageEffectViewController.h"

@interface imageEffectViewController ()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation imageEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title  = @"毛玻璃效果";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"h4.jpg"]];
    self.imageView.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:self.imageView];
   
    UIVisualEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    effectView.frame = CGRectMake(0, 160, [UIScreen mainScreen].bounds.size.width, 40);
    [self.imageView addSubview:effectView];
    
    UILabel *title = [[UILabel alloc] init];
    title.text  = @"今天天气不错哦";
    title.textAlignment = NSTextAlignmentCenter;
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont systemFontOfSize:17];
    title.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40);
    [effectView.contentView addSubview:title];
    
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
