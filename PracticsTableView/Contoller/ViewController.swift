//  ViewController.swift
//  PracticsTableViewWithHeader&FooterView
//  Created by Siddhesh Kotavdekar on 11/15/21.
//  Copyright © 2021 Siddhesh Kotavdekar.All rights reserved.

import UIKit

class ViewController: UIViewController {
//MARK:-Outlet Decleration
    @IBOutlet weak var myTable : UITableView!
//MARK:-View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       

    }
}
//MARK:- TableView Datasource
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        return cell
    }
}
//MARK:-TableView Delegate
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
//MARK:-TableView Header View
extension ViewController {
  
    func tableView(_ tableView: UITableView,heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView,
       viewForHeaderInSection section: Int) -> UIView? {
         let headerView = UIView(frame: CGRect(x: 0,
          y: 0, width: self.myTable.frame.width, height: 50))
        headerView.backgroundColor = .orange
        
     return headerView
    }
}
//MARK:-TableView Footer View
extension ViewController {
  
    func tableView(_ tableView: UITableView,heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView,
       viewForFooterInSection section: Int) -> UIView? {
         let headerView = UIView(frame: CGRect(x: 0,
          y: 0, width: self.myTable.frame.width, height: 50))
        headerView.backgroundColor = .orange
      return headerView
    }
}
