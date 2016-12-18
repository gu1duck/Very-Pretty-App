//
//  ViewController.swift
//  VeryPrettyApp
//
//  Created by Jeremy Petter on 2016-04-18.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setUp()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    func setUp() {
        self.title = "Another View"
        self.tabBarItem = UITabBarItem(title: "Another View", image: UIImage(named: "personIcon"), selectedImage: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

}

