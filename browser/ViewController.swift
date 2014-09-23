//
//  ViewController.swift
//  browser
//
//  Created by Carlos Saura Martinez on 9/23/14.
//  Copyright (c) 2014 Carlos Saura Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClickGo(sender: AnyObject) {
        var text = textField.text
        var url = NSURL.URLWithString(text)
        var request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
}

