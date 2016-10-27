//
//  MyNavController.swift
//  VeryPrettyApp
//
//  Created by Jeremy Petter on 2016-04-22.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class MyNavController: UINavigationController {
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }

    override var childViewControllerForStatusBarStyle: UIViewController? {
        return topViewController
    }

}
