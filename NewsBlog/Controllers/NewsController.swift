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
        
        print("ok")
        
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
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell") as! NewsCell
        
        cell.byLabel.text = "By me"
        cell.scoreLabel.text = "342"
        cell.titleLabel.text = "My title"
        cell.typeLabel.text = "type A"
        return cell
    }
 

  

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("prepareForSegue")

        if segue.identifier == "PostInfo" {
            print("segue.identifier")
            if let postController = segue.destinationViewController as? PostController {
                print("postController")
                postController.selectedPost = ["url": "https://news.ycombinator.com/"]
            }
        }
    }
    
}
