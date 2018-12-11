//
//  UIView+XLSubtractMask.h
//  XLSubtractMask
//
//  Created by 李小龙 on 2018/12/10.
//  Copyright © 2018 李小龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (XLSubtractMask)
/**
设置镂空遮罩视图，该方法本质上是设置maskView
如果寄宿图的内容有更新，需要手动再调用setter方法

@param view 遮罩视图
 */
- (void)setSubtractMaskView:(UIView *)view;

/**
 获取镂空遮罩视图，用于动态修改遮罩的一些属性
 
 @return 遮罩视图
 */

- (UIView *)subtractMaskView;

@end

NS_ASSUME_NONNULL_END
