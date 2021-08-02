//
//  DemoTableViewController.swift
//  TableViewDemo
//
//  Created by Chaitrali chaudhari  on 02/08/21.
//

import UIKit

class DemoTableViewController: UITableViewController {
    
    var alphabates = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var Numbers = ["0","1","2","3","4","5","6","7","8","9","10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // #warning Incomplete implementation, return the number of rows
       if section == 0{
           return alphabates.count
       }
       else if section == 1 {
           return Numbers.count
       }
       else{
           return 0
       }
   
   }
   
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width - 20, height: 40))
        let headerlabel = UILabel(frame: CGRect(x: 10, y: 0, width: view.frame.size.width - 20, height: 40))
        let headerbaseline = UIView(frame: CGRect(x: 0, y: 39, width: view.frame.size.width , height: 1))
        headerbaseline.backgroundColor = UIColor.gray
        header.addSubview(headerlabel)
        header.addSubview(headerbaseline)
        headerlabel.font = UIFont.systemFont(ofSize: 18)
       if section == 0 {
        headerlabel.text = "Alphabates"
        headerlabel.textColor = UIColor.systemBlue
        return header

       }
       else if section == 1 {
        headerlabel.text = "Numbers"
        headerlabel.textColor = UIColor.systemGreen

        return header
       }
       else{
        return nil
       }
   }

    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let Footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width - 20, height: 10))
        return Footer

    }

    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContentTableViewCell", for: indexPath) as! ContentTableViewCell

        if indexPath.section == 0{
            cell.contentLabel.text = alphabates[indexPath.row]
        }
        else{
            cell.contentLabel.text = Numbers[indexPath.row]

        }

        return cell
    }
    

 
}
