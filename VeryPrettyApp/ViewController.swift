//
//  ViewController.swift
//  VeryPrettyApp
//
//  Created by Jeremy Petter on 2016-04-18.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setUp()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    func setUp() {
        self.title = "Another Awesome View"
        self.tabBarItem = UITabBarItem(title: "Another View", image: UIImage(named: "personIcon"), selectedImage: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.myBlueColor()
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
}

