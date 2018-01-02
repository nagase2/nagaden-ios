import UIKit

class ForthWebViewController: UIViewController {
    
    
    @IBOutlet weak var forthWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("forth viewがロードされました")
        let url = URL(string: "https://api-m2x.att.com/v2/charts/5981d1759bc8baf3c35e61a118aa6fbe.svg?width=900&height=500&type=values")
        forthWebView.loadRequest(URLRequest(url: url!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
