//
//  ThirdViewController.swift
//  Nagaden
//
//  Created by Nagase on 2018/01/01.
//  Copyright © 2018年 Nagase Denki. All rights reserved.
//


import UIKit

class ThirdViewController: UIViewController {
    
    //let url = URL(string: "https://www.google.co.jp")
    
    @IBOutlet weak var thirdWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.google.co.jp")
        thirdWebView.loadRequest(URLRequest(url: url!))
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
}
