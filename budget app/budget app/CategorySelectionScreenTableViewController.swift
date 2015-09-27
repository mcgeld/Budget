//
//  CategorySelectionScreenTableViewController.swift
//  budget app
//
//  Created by Malcolm Geldmacher on 9/22/15.
//  Copyright (c) 2015 Malcolm Geldmacher. All rights reserved.
//

import UIKit

class CategorySelectionScreenTableViewController: UITableViewController, UITableViewDelegate {
    
    var list: [String] = ["Groceries", "Food", "Gas", "Water", "Toilet", "Fun", "Toys", "Games", "Friends", "Rocks"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
        tableView.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return list.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            return tableView.dequeueReusableCellWithIdentifier("HeaderCategoryCell", forIndexPath: indexPath) as! CategoryTableHeaderCell
        }
        else
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("CategoryCell", forIndexPath: indexPath) as! CategoryTableCellTableViewCell
            cell.setCategoryTitle(list[indexPath.row])
            cell.updateConstraintsIfNeeded()
            return cell
        }
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        if indexPath.row == 0
        {
            return false
        }
        return true
    }


    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            list.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        var screen = segue.destinationViewController as! CategoryAmountEntryScreenViewController
        // Pass the selected object to the new view controller.
        var cell = sender as! CategoryTableCellTableViewCell
        screen.Category = cell.CategoryTitleLabel.text!
    }


}
