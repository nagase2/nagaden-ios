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
    
  
    
    @IBAction func printButton(_ sender: Any) {
        NSLog("ボタンが押されました")
        /**
 let pInfo : UIPrintInfo = UIPrintInfo.printInfo()
        pInfo.outputType = UIPrintInfoOutputType.general
        pInfo.jobName = (thirdWebView.request?.url?.absoluteString)!
        pInfo.orientation = UIPrintInfoOrientation.landscape
 **/
       // var printController = UIPrintInfoOrientation.portrait
        
    
       let printController = UIPrintInteractionController.shared
        
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.jobName = "prInting an image"
        printInfo.outputType = UIPrintInfoOutputType.general
        printInfo.orientation = UIPrintInfoOrientation.landscape
        
        
        printController.printInfo = printInfo
        printController.printFormatter = thirdWebView.viewPrintFormatter()
        //printController.printingItem = thirdWebView.viewPrintFormatter()
        
        printController.present(animated: true){(_,isPrinted,error) in
            if error == nil {
                if isPrinted{
                    print("image is printed")
                    
                }else{
                    print("image is not printed")
                }
            }
        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://api-m2x.att.com/v2/charts/d18699a29eedf08446d254ea187bf796.svg?width=800&height=600&type=avg&interval=6000&start=2018-01-01T15%3A00%3A00.000Z&end=2018-01-30T15%3A00%3A00.000Z")
        thirdWebView.loadRequest(URLRequest(url: url!))
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    
    
    
}
