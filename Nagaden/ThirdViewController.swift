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
    
  
    @IBOutlet weak var fromDate: UIDatePicker!
    @IBOutlet weak var toDate: UIDatePicker!
    
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
    @IBAction func fromDateChanged(_ sender: UIDatePicker) {
        NSLog("From日付が変更されました")
        reloadGraph()
    }
    @IBAction func toDateChanged(_ sender: UIDatePicker) {
        NSLog("To日付が変更されました")
        reloadGraph()
    }
    
    
    func reloadGraph(){
        //FromとToの日付を取得
        //Make URL 
        //do reload
        
        let calendar = Calendar.current
        
        let fromYear = String(format:"%04d",calendar.component(.year,from:fromDate.date))
        let fromMonth = String(format:"%02d",calendar.component(.month,from:fromDate.date))
        let fromDay = String(format:"%02d",calendar.component(.day,from:fromDate.date))
        
        let toYear = String(format:"%04d",calendar.component(.year,from:toDate.date))
        let toMonth = String(format:"%02d",calendar.component(.month,from:toDate.date))
        let toDay = String(format:"%02d",calendar.component(.day,from:toDate.date))
        
        let f = DateFormatter()
        f.timeStyle = .none
        f.dateStyle = .long
        f.locale = Locale(identifier: "ja_JP")
        
            
        NSLog(f.string(from: fromDate.date))
        NSLog(fromYear)
        NSLog(fromMonth)
        NSLog(fromDay)
        
       // NSLog(fromDate.date.)
        url = URL(string: "https://api-m2x.att.com/v2/charts/d18699a29eedf08446d254ea187bf796.svg?width=1000&height=700&type=avg&interval=6000&start="+fromYear+"-"+fromMonth+"-"+fromDay+"T15%3A00%3A00.000Z&end="+toYear+"-"+toMonth+"-"+toDay+"T15%3A00%3A00.000Z")
        
        thirdWebView.loadRequest(URLRequest(url: url!))
    }
    
    var url = URL(string: "https://api-m2x.att.com/v2/charts/d18699a29eedf08446d254ea187bf796.svg?width=1000&height=700&type=avg&interval=6000&start=2018-01-01T15%3A00%3A00.000Z&end=2018-01-30T15%3A00%3A00.000Z")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdWebView.loadRequest(URLRequest(url: url!))
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
}
