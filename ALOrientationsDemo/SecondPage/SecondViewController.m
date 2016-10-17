//
//  SecondViewController.m
//  ALOrientationsDemo
//
//  Created by 李丽 on 16/9/7.
//  Copyright © 2016年 LiLi. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
}

#pragma mark - 屏幕改变
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    NSLog(@"屏幕方向改变回调函数");
}

//显示状态栏
- (BOOL) prefersStatusBarHidden
{
    return NO;
}

@end
