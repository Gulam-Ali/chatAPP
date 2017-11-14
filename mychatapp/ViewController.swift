//
//  ViewController.swift
//  mychatapp
//
//  Created by gulam ali on 08/11/17.
//  Copyright © 2017 gulam ali. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    
    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var paswordtext: UITextField!
    
    @IBOutlet weak var loginotlt: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func logintap(_ sender: Any) {
        if emailtext.text != nil && paswordtext.text != nil{
            if segmentcontrol.selectedSegmentIndex == 0 {
                Auth.auth().signIn(withEmail: emailtext.text!, password: paswordtext.text!, completion: { (user, error) in
                    if user != nil{
                        
                        print("success")
                        self.performSegue(withIdentifier: "sc", sender: self)
                        
                    }else{
                        if let myerr = error?.localizedDescription{
                            print(myerr)
                        }else{
                            print("Error")
                        }
                    }
                })
                
            }else{
                Auth.auth().createUser(withEmail: emailtext.text!, password: paswordtext.text!, completion: { (user, error) in
                    if user != nil{
                        
                         print("success")
                         self.performSegue(withIdentifier: "sc", sender: self)
                        
                    }else{
                        if let myerr = error?.localizedDescription{
                            print(myerr)
                        }else{
                            print("Error")
                        }
                    }
                })
            }
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

