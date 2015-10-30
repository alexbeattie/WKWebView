//
//  ViewController.swift
//  WKWebView
//
//  Created by Alex Beattie on 10/30/15.
//  Copyright © 2015 Alex Beattie. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        webView = WKWebView()
        container.addSubview(webView)
        print(container.bounds.width)
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // change frame after you add subview bc once you add a subview, it inherits the parent's cooridinate system
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame

        loadRequest("http://www.blackcrowes.com/")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //reusable function
    func loadRequest(urlStr: String) {

        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
        
    }
    
    @IBAction func loadBlackCrowes(sender: AnyObject) {
        loadRequest("http://www.blackcrowes.com/")

    }

    @IBAction func loadPhish(sender: AnyObject) {
        
        loadRequest("http://phish.com/")
    }
    
    @IBAction func loadAllmanBrothers(sender: AnyObject) {
        loadRequest("http://allmanbrothersband.com/")
        
    }
}

