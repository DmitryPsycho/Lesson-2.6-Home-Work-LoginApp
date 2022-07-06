//
//  TabBarViewController.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 06.07.2022.
//
import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarApearance = UITabBarAppearance()
        tabBarApearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarApearance
        tabBar.scrollEdgeAppearance = tabBarApearance
    }


}
