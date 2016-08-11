//
//  MyNavController.swift
//  VeryPrettyApp
//
//  Created by Jeremy Petter on 2016-04-22.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class MyNavController: UINavigationController {
    override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return self.topViewController
    }
}
