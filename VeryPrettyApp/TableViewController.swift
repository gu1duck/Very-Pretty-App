//
//  TableViewController.swift
//  VeryPrettyApp
//
//  Created by Jeremy Petter on 2016-04-18.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override init(style: UITableViewStyle) {
        super.init(style: style)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    func showAlert() {
        let alertController = UIAlertController(title: "Save", message: "Do you want to save?", preferredStyle: .alert)

        let save = UIAlertAction(title: "Save", style: .default, handler: nil)
        alertController.addAction(save)

        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancel)

        present(alertController, animated: true, completion: nil)
    }

//    override var preferredStatusBarStyle : UIStatusBarStyle {
//        return .lightContent
//    }

}

//MARK: Private methods
private extension TableViewController {

    func setUp(){
        self.title = "Super Awesome Table View"
        let rightBarButton = UIBarButtonItem(title: "Save", style: .done, target: self, action:#selector(showAlert))

//        rightBarButton.tintColor = .green

        let attributes = [
            NSFontAttributeName: UIFont.jer_STFont(size: 18)
        ]

//        let attributedSting = NSAttributedString(string: "blah", attributes: attributes)

        rightBarButton.setTitleTextAttributes(attributes, for: .normal)
        self.navigationItem.rightBarButtonItem = rightBarButton
        self.tabBarItem = UITabBarItem(title: "Table View", image: UIImage(named: "smiley"), selectedImage: nil)

    }
}

// MARK: UITableViewDataSource
extension TableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cellIdentifier"
        let cell:UITableViewCell = {
            if let cell = tableView.dequeueReusableCell(withIdentifier: identifier) {
                return cell
            } else {
                return UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
            }
        }()
        cell.textLabel?.text = "Cell \((indexPath as NSIndexPath).row)"
        cell.textLabel?.textColor = .red
        cell.textLabel?.font = UIFont.jer_STFont(size: 18.0)
        cell.detailTextLabel?.text = "details"
        cell.detailTextLabel?.textColor = .jer_green
        cell.detailTextLabel?.textColor = UIColor.gray
        cell.accessoryType = .detailButton

        return cell
    }
}
