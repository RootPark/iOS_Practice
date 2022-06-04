//
//  ViewController.swift
//  EmailLogin
//
//  Created by 박근원 on 2022/05/22.
//

import UIKit
import Firebase

import Firebase
import FirebaseAuth
import FirebaseCore

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user,error) in
            if user != nil{
                print("Login success!")
            }
            else{
                print("login fail")
            }
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        email.placeholder = "login done"
        password.placeholder = "login done"
        // Do any additional setup after loading the view.
    }


}


