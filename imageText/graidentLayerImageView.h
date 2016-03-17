//
//  graidentLayerImageView.h
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger{
    up, // 从上到下
    down, // 从下到上
    right, // 从右往左
    left, // 从左到右
} EColorDirection;

@interface graidentLayerImageView : UIImageView
/**
 *  确定方向
 */
@property (nonatomic,assign) EColorDirection direction;
/**
 *  确定渐变的颜色
 */
@property (strong, nonatomic) UIColor *color;
/**
 *  百分比（渐变开始或者结束的地方）
 */
@property (nonatomic,assign) CGFloat percent;
@property (copy, nonatomic) NSString *titles;
@end
