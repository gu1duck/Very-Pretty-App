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

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let tableViewController = TableViewController(style: .Plain)
        let navigationController1 = MyNavController(rootViewController: tableViewController)

        let viewController = ViewController()
        let navigationController2 = MyNavController(rootViewController: viewController)

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController1, navigationController2]

        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        let proxy = UIView.appearance()

        proxy.tintColor = .myBlueColor()

        UINavigationBar.appearance().barTintColor =
            UIColor.redColor()

        let barButtonProxy = UIBarButtonItem.appearance()

        let barButtonTextAttributes = [
            NSForegroundColorAttributeName: UIColor.greenColor(),
        ]

        barButtonProxy.setTitleTextAttributes(barButtonTextAttributes, forState: .Normal)



        return true
    }
}

