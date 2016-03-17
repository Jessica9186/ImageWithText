//
//  imageTextController.m
//  imageText
//
//  Created by zxy on 15/11/30.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "imageTextController.h"
#import "image+labelViewController.h"
#import "imageEffectViewController.h"
#import "imageCAGrandientViewController.h"
#import "imageEffect2ViewController.h"

@interface imageTextController ()

@end

@implementation imageTextController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"菜单栏";
//    self.view.backgroundColor = [UIColor cyanColor];
    
    
    [self hideExtraCellLine:self.tableView];
    
}


#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 1;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 4 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
        if (indexPath.section == 0) {
            if (indexPath.row == 0) {
                cell.textLabel.text = @"image+label";
            }else if (indexPath.row == 1){
                cell.textLabel.text = @"image+visualEffect";
            }else if (indexPath.row == 2){
                cell.textLabel.text = @"image+visualEffect2";
            }else if (indexPath.row == 3){
                cell.textLabel.text = @"渐变";
            }
            
        }
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            image_labelViewController *imageLabel = [[image_labelViewController alloc] init];
            [self.navigationController pushViewController:imageLabel animated:YES];
        }else if (indexPath.row == 1){
            imageEffectViewController *imageEffective = [[imageEffectViewController alloc] init];
            [self.navigationController pushViewController:imageEffective animated:YES];
        }else if (indexPath.row == 2){
            
            imageEffect2ViewController *image = [[imageEffect2ViewController alloc] init];
            [self.navigationController pushViewController:image animated:YES];
        }else if ( indexPath.row == 3){
            imageCAGrandientViewController *imageGrandient = [[imageCAGrandientViewController alloc] init];
            [self.navigationController pushViewController:imageGrandient animated:YES];
        }
    }
}
#pragma mark - 不显示多余的cell的分割线——这个方法需要在tableview创建完毕之后才能调用
- (void)hideExtraCellLine:(UITableView *)tableView
{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
    
}
@end
