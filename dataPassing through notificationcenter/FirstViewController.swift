//
//  FirstViewController.swift
//  dataPassing through notificationcenter
//
//  Created by A RAJU on 11/22/19.
//  Copyright © 2019 A RAJU. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var bactton1: UIButton!
   
    var dict1 = [String:Any]()
    
    @IBAction func btn(_ sender: Any) {
        
       var dict1 = ["firstName":textfield.text]
   
        
        NotificationCenter.default.post(name: NSNotification.Name("onBtnTap"), object: self, userInfo:dict1)
     
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
