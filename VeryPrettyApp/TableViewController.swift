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
        let alertController = UIAlertController(title: "Save", message: "Do you want to save?", preferredStyle: .Alert)

        let save = UIAlertAction(title: "Save", style: .Default, handler: nil)
        alertController.addAction(save)

        let cancel = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alertController.addAction(cancel)

        presentViewController(alertController, animated: true, completion: nil)
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

}

//MARK: Private methods
private extension TableViewController {

    func setUp(){
        self.title = "Super Awesome Table View"
        let rightBarButton = UIBarButtonItem(title: "Save", style: .Done, target: self, action:#selector(showAlert))
        self.navigationItem.rightBarButtonItem = rightBarButton
        self.tabBarItem = UITabBarItem(title: "Table View", image: UIImage(named: "smiley"), selectedImage: nil)

    }
}

// MARK: UITableViewDataSource
extension TableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "cellIdentifier"
        let cell:UITableViewCell = {
            if let cell = tableView.dequeueReusableCellWithIdentifier(identifier) {
                return cell
            } else {
                return UITableViewCell(style: .Subtitle, reuseIdentifier: identifier)
            }
        }()
        cell.textLabel?.text = "Cell \(indexPath.row)"
        cell.textLabel?.font = UIFont.zootopiaFontOfSize(14.0)
        cell.detailTextLabel?.text = "details"
        cell.detailTextLabel?.textColor = UIColor.grayColor()
        cell.accessoryType = .DetailButton

        return cell
    }
}
