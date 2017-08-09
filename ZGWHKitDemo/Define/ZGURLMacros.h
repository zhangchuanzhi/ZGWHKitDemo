//
//  ZGURLMacros.h
//  ZG
//
//  Created by offcn_zcz32036 on 2017/7/6.
//  Copyright © 2017年 cn. All rights reserved.
//

#ifndef ZGURLMacros_h
#define ZGURLMacros_h

/*
 
 将项目中所有的接口写在这里,方便统一管理,降低耦合
 
 这里通过宏定义来切换你当前的服务器类型,
 将你要切换的服务器类型宏后面置为真(即>0即可),其余为假(置为0)
 如下:现在的状态为测试服务器
 这样做切换方便,不用来回每个网络请求修改请求域名,降低出错事件
 */
#define DevelopSever    1
#define TestSever       0
#define ProductSever    0

#if DevelopSever

/**开发服务器*/
#define URL_main @""


#elif TestSever

/**测试服务器*/
#define URL_main @""

#elif ProductSever

/**生产服务器*/
#define URL_main @""
#endif






#pragma mark  ——————— 详细接口地址 ————————


#endif 
