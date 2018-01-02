//
//  SecondViewController.swift
//  Nagaden
//
//  Created by Nagase on 2018/01/01.
//  Copyright © 2018年 Nagase Denki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var secoundWebView: UIWebView!
    var timer: Timer!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        timer.fire()
    }
    override func viewDidDisappear(_ animated: Bool) {
        //１timer.
        NSLog("別の画面に移りました")
        //TODO:ここで一旦タイマーを停止する必要がある。
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("second viewがロードされました。")
        //let url = URL(string: "https://m2x.att.com/catalog/df834a7986e9a52d5d28e46dd97e87df")
        let url = URL(string: "https://api-m2x.att.com/v2/charts/d18699a29eedf08446d254ea187bf796.svg?width=1000&height=750&type=avg&interval=500")
        secoundWebView.loadRequest(URLRequest(url: url!))
    }
    override func viewDidAppear(_ animated: Bool) {
        NSLog("second viewが表示されました")
        secoundWebView.reload()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func update(tm: Timer) {
        // do something
        NSLog("タイマーが呼ばれました")
        secoundWebView.reload()
    }


}

