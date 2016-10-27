//
//  AppDelegate.swift
//  VeryPrettyApp
//
//  Created by Jeremy Petter on 2016-04-18.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let tableViewController = TableViewController(style: .plain)
        let navigationController1 = MyNavController(rootViewController: tableViewController)

        let viewController = ViewController()
        let navigationController2 = MyNavController(rootViewController: viewController)

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController1, navigationController2]

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        UIView.appearance().tintColor = .orange
        UINavigationBar.appearance().barTintColor = .black

        return true
    }
}

