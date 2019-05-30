//
//  AppDelegate.m
//  UIWindow
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//可以用来参数整个程序框架结构
//整个程序对iOS发放工程师的入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建一个UIWindow对的
    //整个程序中只有一个UIWindow对象
    //在程序上基本表示屏幕窗口
    //UIWindow也是继承于UIView
    //UIWindow是一个特殊的UIView
    //UIScreen:表示屏幕硬件表示类
    //mainScreen获得主屏幕设备信息
    //bounds表示屏幕的宽高值
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建一个视图控制器为UIWindow的视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
    
    //设置背景颜色
    self.window.backgroundColor = [UIColor blueColor];
    
    UIView *firstView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 60)];
    firstView.backgroundColor = [UIColor redColor];
  
    
    UIView *backView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 240, 260)];
    backView.backgroundColor = [UIColor greenColor];
    
    
    //将backView作为firstView的父亲视图
    //子视图的坐标是参照父视图的坐标，相等父视图位置
    //当父视图移动时，所有子视图都会移动
    [backView addSubview:firstView];
    [self.window addSubview:backView];
    //使window有效并显示到屏幕上
    [self.window makeKeyAndVisible];
    NSLog(@"%@",firstView.window);
     NSLog(@"%@",backView.window);
     NSLog(@"%@",self.window);
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
