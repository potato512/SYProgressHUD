//
//  SYIToast+SYCategory.m
//  zhangshaoyu
//
//  Created by zhangshaoyu on 15/7/30.
//  Copyright (c) 2015年 zhangshaoyu. All rights reserved.
//

#import "SYIToast+SYCategory.h"

@implementation SYIToast (SYCategory)

// 实例化iToast
+ (void)alertWithTitle:(NSString *)title
{
    if ([self isNullNSStringWithText:title]) {
        return ;
    }
    
    [[SYIToast shareIToast] showText:title postion:SYIToastPositionTop];
}

+ (void)alertWithTitleCenter:(NSString *)title
{
    if ([self isNullNSStringWithText:title]) {
        return ;
    }
    
    [[SYIToast shareIToast] showText:title postion:SYIToastPositionCenter];
}

+ (void)alertWithTitleBottom:(NSString *)title
{
    if ([self isNullNSStringWithText:title]) {
        return ;
    }
    
    [[SYIToast shareIToast] showText:title postion:SYIToastPositionBottom];
}

// 隐藏iToast
+ (void)hideIToast
{
    [[SYIToast shareIToast] hideIToast];
}

// 字符非空判断（可以是空格字符串）
+ (BOOL)isNullNSStringWithText:(NSString *)text
{
    if (!text || [text isEqualToString:@""] || 0 == text.length) {
        return YES;
    }
    
    return NO;
}

@end
