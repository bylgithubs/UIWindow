//
//  main.m
//  UIWindow
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    //自动内存释放函数
    @autoreleasepool {
        //UIKit框架的启动函数
        //参数一：argc,启动时带有参数个数；
        //参数二：argv.参数列表
        //参数三，要求传入一个主框架类类名
        //主框架的代理对象
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
