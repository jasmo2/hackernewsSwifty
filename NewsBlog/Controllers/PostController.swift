//
//  PostController.swift
//  NewsBlog
//
//  Created by Jaime Molina Orbe on 4/29/16.
//  Copyright © 2016 jasmo2. All rights reserved.
//

import UIKit
import SwiftyJSON


class PostController: UIViewController {
    
    
    @IBOutlet weak var newsView: UIWebView!
    var selectedPost:JSON!
    
//    required init?(coder aDecoder: NSCoder) {
//        print("init \(selectedPost)")
//        
//        super.init(coder: aDecoder)
//    }
    
    
    deinit {
        print("deinit PostController")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("init \(selectedPost)")
        print("selectedPost[\"url\"] \(selectedPost["url"])")

        let url = NSURL ( string: selectedPost["url"].string!);
        let requestObj = NSURLRequest(URL: url!);
        
        newsView.loadRequest(requestObj)
        self.dismissViewControllerAnimated(true, completion: {});        // Do any additional setup after loading the view.
    }

    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    */
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //         Get the new view controller using segue.destinationViewController.
    //         Pass the selected object to the new view controller.
        
    }
    

}
