//
//  FirstViewController.swift
//  Nagaden
//
//  Created by Nagase on 2018/01/01.
//  Copyright © 2018年 Nagase Denki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var firstWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("first viewがロードされました")
  
        let url = URL(string: "https://m2x.att.com/catalog/df834a7986e9a52d5d28e46dd97e87df")

        firstWebView.loadRequest(URLRequest(url: url!))
    }
    override func viewDidAppear(_ animated: Bool) {
        NSLog("first viewが表示されました")
       // firstWebView.reload()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

