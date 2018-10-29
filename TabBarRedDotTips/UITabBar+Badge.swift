//
//  UITabBar+Badge.swift
//  TabBarRedDotTips
//
//  Created by lixinyu on 2018/10/29.
//  Copyright © 2018年 lixinyu. All rights reserved.
//

import UIKit

let TabbarItemNums = 3

extension UITabBar {
    
    /// 添加小红点
    ///
    /// - Parameter index: 位置
    func showBadgeOnItem(_ index: Int) {
        removeBadgeOnItem(index)
        let badge = UIView()
        badge.tag = 888 + index
        badge.layer.cornerRadius = 3.5
        badge.backgroundColor = UIColor.red
        let percentX = (Float(index) + 0.6) / Float(TabbarItemNums)
        let x = ceilf(percentX * Float(self.frame.size.width))
        let y = ceilf(0.15 * Float(self.frame.size.height) )
        badge.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: 7, height: 7)
        addSubview(badge)
    }
    
    /// 移除小红点
    ///
    /// - Parameter index: 位置
    func removeBadgeOnItem(_ index: Int) {
        for subView in self.subviews {
            if subView.tag == 888 + index {
                subView.removeFromSuperview()
            }
        }
    }
}
