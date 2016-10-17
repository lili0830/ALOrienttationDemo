//
//  UITabBarController+Portrait.m
//  ALOrientationsDemo
//
//  Created by 李丽 on 16/9/7.
//  Copyright © 2016年 LiLi. All rights reserved.
//

#import "UITabBarController+Portrait.h"
#define IS_IPHONE_6P ([UIScreen mainScreen].bounds.size.height == 2208/3)


@implementation UITabBarController (Portrait)

#pragma mark 设置单个控制器支持横屏
- (BOOL)shouldAutorotate
{
    
    if (IS_IPHONE_6P)
    {
        return YES;
        
    }else if ([[self.viewControllers objectAtIndex:1] isEqual:self.selectedViewController])
    {
        return YES;
    }
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([[self.viewControllers objectAtIndex:1] isEqual:self.selectedViewController])
    {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }
    return UIInterfaceOrientationMaskPortrait;
}

@end
