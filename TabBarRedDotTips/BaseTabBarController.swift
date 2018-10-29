//
//  BaseTabBarController.swift
//  TabBarRedDotTips
//
//  Created by lixinyu on 2018/10/29.
//  Copyright © 2018年 lixinyu. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildController("首页", image: "Me", selectedImage: "Me", vc: ViewController())
        setupChildController("分类", image: "Me", selectedImage: "Me", vc: ViewController())
        setupChildController("我的", image: "Me", selectedImage: "Me", vc: ViewController())
        self.tabBar.showBadgeOnItem(2)
    }

    private func setupChildController(_ title: String, image: String,selectedImage: String, vc: UIViewController) {
        let nav = UINavigationController(rootViewController: vc)
        let tabBar = UITabBarItem(title: title, image: UIImage(named: image), selectedImage: UIImage(named: selectedImage))
        nav.tabBarItem = tabBar
        self.addChild(nav)
    }
}
