//
//  NewsController.swift
//  NewsBlog
//
//  Created by Jaime Molina Orbe on 4/29/16.
//  Copyright © 2016 jasmo2. All rights reserved.
//

import UIKit

class NewsController: UITableViewController {

    var valueToPass:String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        valueToPass = "I am passed Value"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        return 2
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell") as! NewsCell
        
        cell.byLabel.text = "By me"
        cell.scoreLabel.text = "342"
        cell.titleLabel.text = "My title"
        cell.typeLabel.text = "type A"
        
        performSegueWithIdentifier("PostNews", sender: self)
        return cell
    }
 

  

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "PostNews") {
          let viewController = segue.destinationViewController as! PostController
          viewController.passedValue = valueToPass
        }
        
    }
    
}
