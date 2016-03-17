//
//  graidentLayerImageView.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "graidentLayerImageView.h"
@interface graidentLayerImageView()
@property (strong, nonatomic) CAGradientLayer *gradientLayer;
@property (strong, nonatomic) UILabel *label;
@end

@implementation graidentLayerImageView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化
        self.gradientLayer = [CAGradientLayer layer];
        self.gradientLayer.frame = self.bounds;
        self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                                      (__bridge id)[UIColor blackColor].CGColor
                                      ];
        
        self.gradientLayer.startPoint = CGPointMake(0, 0);
        self.gradientLayer.endPoint = CGPointMake(0, 1);
        
        self.gradientLayer.locations = @[@(0.6),
                                         @(1.0)
                                         ];
        
        [self.layer addSublayer:self.gradientLayer];
        
        
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.bounds.size.height - 40, self.bounds.size.width, 40)];
        self.label.text = self.titles;
        self.label.textColor = [UIColor whiteColor];
        self.label.font = [UIFont systemFontOfSize:16];
        self.label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.label];
    }
    return self;
}
@synthesize titles = _titles;
- (void)setTitles:(NSString *)titles
{
    _titles = titles;
//    self.titles = titles;
    self.label.text = titles;
}
- (NSString *)titles
{
    return _titles;
}


//@synthesize color = _color;
//- (void)setColor:(UIColor *)color
//{
//    _color = color;
//    self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
//                                  (__bridge id)color.CGColor
//                                  ];
//}
//- (UIColor *)color
//{
//    return _color;
//}
//@synthesize percent = _percent;
//- (void)setPercent:(CGFloat)percent {
//    _percent = percent;
//    self.gradientLayer.locations = @[@(percent), @(1)];
//}
//- (CGFloat)percent {
//    return _percent;
//}
//
//@synthesize direction = _direction;
//- (void)setDirection:(EColorDirection)direction {
//    _direction = direction;
//    if (direction == up) {
//        self.gradientLayer.startPoint = CGPointMake(0, 0);
//        self.gradientLayer.endPoint   = CGPointMake(0, 1);
//    } else if (direction == down) {
//        self.gradientLayer.startPoint = CGPointMake(0, 1);
//        self.gradientLayer.endPoint   = CGPointMake(0, 0);
//    } else if (direction == right) {
//        self.gradientLayer.startPoint = CGPointMake(1, 0);
//        self.gradientLayer.endPoint   = CGPointMake(0, 0);
//    } else if (direction == left) {
//        self.gradientLayer.startPoint = CGPointMake(0, 0);
//        self.gradientLayer.endPoint   = CGPointMake(1, 0);
//    } else {
//        self.gradientLayer.startPoint = CGPointMake(0, 0);
//        self.gradientLayer.endPoint   = CGPointMake(0, 1);
//    }
//}
//- (EColorDirection)direction {
//    return _direction;
//}

@end
