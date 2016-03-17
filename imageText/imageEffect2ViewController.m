//
//  imageEffect2ViewController.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "imageEffect2ViewController.h"

@interface imageEffect2ViewController ()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation imageEffect2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title  = @"毛玻璃效果2";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"h4.jpg"]];
    self.imageView.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:self.imageView];
    
    UIVisualEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    UIVisualEffect *effect2 = [UIVibrancyEffect effectForBlurEffect:(UIBlurEffect *)effect];
    
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    UIVisualEffectView *effect2View = [[UIVisualEffectView alloc] initWithEffect:effect2];
    effectView.frame = CGRectMake(0, 160, [UIScreen mainScreen].bounds.size.width, 40);

    effect2View.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40);
    [effectView addSubview:effect2View];
    effectView.frame = CGRectMake(0, 160, [UIScreen mainScreen].bounds.size.width, 40);
    [self.imageView addSubview:effectView];
    
    UILabel *title = [[UILabel alloc] init];
    title.text  = @"今天天气不错哦";
    title.textAlignment = NSTextAlignmentCenter;
        title.textColor = [UIColor whiteColor];
    //    title.backgroundColor = [UIColor blackColor];
    title.alpha = 0.5;
    title.font = [UIFont systemFontOfSize:17];
    title.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30);
    [effect2View.contentView addSubview:title];

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
