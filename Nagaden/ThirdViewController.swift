//
//  ThirdViewController.swift
//  Nagaden
//
//  Created by Nagase on 2018/01/01.
//  Copyright © 2018年 Nagase Denki. All rights reserved.
//


import UIKit

class ThirdViewController: UIViewController {
    

    @IBOutlet weak var thirdWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://m2x.att.com/dashboards/shared/10aa6f363cefdab87add5e583cffbd02")
        thirdWebView.loadRequest(URLRequest(url: url!))
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
}
