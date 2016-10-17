//
//  AppDelegate.m
//  ALOrientationsDemo
//
//  Created by 李丽 on 16/9/7.
//  Copyright © 2016年 LiLi. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "UITabBarController+Portrait.h"

@interface AppDelegate ()

@property (nonatomic, strong) UITabBarController *tabBarViewController;

@end

@implementation AppDelegate


- (void) initTabBarViewController
{
    self.tabBarViewController = [[UITabBarController alloc] init];
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    [self setTabBarControl:firstVC itemTitle:@"首页" imageName:@"FirstTabbarNone" selectedImageName:@"FirstTabbarSelected"];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstVC];
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self setTabBarControl:secondVC itemTitle:@"第二页" imageName:@"SecondTabbarNone" selectedImageName:@"SecondTabbarSelected"];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self setTabBarControl:thirdVC itemTitle:@"第三页" imageName:@"ThirdTabbarNone" selectedImageName:@"ThirdTabbarSelected"];
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    
    self.tabBarViewController.viewControllers = [NSArray arrayWithObjects:firstNav, secondNav, thirdNav, nil];
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self initTabBarViewController];
    self.window.rootViewController = self.tabBarViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void) setTabBarControl:(UIViewController *)childVC itemTitle:(NSString *)itemTitle imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    //设置控制器属性
    childVC.tabBarItem.title = itemTitle;
    
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectedImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]; //默认 UIImageRenderingModeAlwaysOriginal // 始终绘制图片原始状态，不使用Tint Color。
    
    childVC.tabBarItem.image = image;
    childVC.tabBarItem.selectedImage = selectedImage;
    
//    childVC.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
}


@end
