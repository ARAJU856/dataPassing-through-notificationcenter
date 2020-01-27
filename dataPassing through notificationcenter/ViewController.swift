

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    
    var dict1 = [String:Any]()
    
    var dictionary = [String]()
  
    @IBAction func button(_ sender: Any) {
        
       
        
    
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "firstVC") as! FirstViewController
        present(firstVC , animated: true, completion: nil)
        
      
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        NotificationCenter.default.addObserver(self, selector: #selector(MsgShow(naga:)), name: NSNotification.Name("onBtnTap"), object: nil)
//         NotificationCenter.default.addObserver(self, selector: #selector(dataPassing(value: )), name: NSNotification.Name("onBtnTap"), object: nil)
//
    }

    @objc func MsgShow(naga:Notification){
        var data = naga.userInfo
        
        label.text = naga.userInfo!["firstName"]as? String
        
    }
}

