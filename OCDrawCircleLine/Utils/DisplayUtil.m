//
//  DisplayUtil.m
//  OCDrawCircleLine
//
//  Created by 麻生 拓弥 on 2016/02/29.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "DisplayUtil.h"

@implementation DisplayUtil

/**
 * Return screen width
 */
+ (CGSize)returnDisplaySize {
    
    CGRect displayRect = [[UIScreen mainScreen] bounds];
    CGSize displaySize = displayRect.size;
    
    return displaySize;
}

@end
