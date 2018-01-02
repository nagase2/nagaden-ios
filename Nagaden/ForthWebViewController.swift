import UIKit

class ForthWebViewController: UIViewController {
    
    
    @IBOutlet weak var forthWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("forth viewがロードされました")
        let url = URL(string: "https://m2x.att.com/dashboards/shared/10aa6f363cefdab87add5e583cffbd02")
        forthWebView.loadRequest(URLRequest(url: url!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
