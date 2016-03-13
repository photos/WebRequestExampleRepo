//
//  ViewController.swift
//  WebRequestExample
//
//  Created by Forrest Collins on 1/11/16.
//  Copyright © 2016 helloTouch. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    //-------------------
    // MARK: - UI Outlets
    //-------------------
    @IBOutlet weak var container: UIView!
    
    var webView: WKWebView!
    
    //----------------------
    // MARK: - View Did Load
    //----------------------
    override func viewDidLoad() {
        super.viewDidLoad()
       
        webView = WKWebView()
        // added a subview but have to make sure it is the proper size
        // make the size of the webview match the frame bounds of the container
        container.addSubview(webView)
        
    }
    
    //---------------------------------------------
    // MARK: - View Did Appear
    //         called after constraints are applied
    //---------------------------------------------
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let webFrame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = webFrame
       
        loadRequest("https://www.weheartswift.com")
        
    }
    
    //-------------------------
    // MARK: - Load URL Request
    //-------------------------
    func loadRequest(urlStr: String) {
        
        // load a request
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    @IBAction func swiftButtonTapped(sender: AnyObject) {
        loadRequest("https://www.weheartswift.com")
    }
    
    @IBAction func celebGossipButtonTapped(sender: AnyObject) {
        loadRequest("http://www.tmz.com")
    }
    
    @IBAction func steakButtonTapped(sender: AnyObject) {
        loadRequest("https://en.wikipedia.org/wiki/Steak")
    }
}

