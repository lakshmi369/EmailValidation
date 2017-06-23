//
//  ViewController.swift
//  EmailValidation
//
//  Created by user on 22/06/17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        
        let emailId = emailTextField.text
        
        guard emailId != nil  && emailId?.isEmpty == false else {
            print("Email Address field cannot be empty")
            return
        }
        
        
        let validmail = validateEmail(candidate: emailId)
        
        
        if validmail {
            
            print("valid Email ID ")
            
        } else {
            
            print("Not a valid Email IDPlease enter a Valid Email ID")
        }
    }
    
    
    func validateEmail(candidate: String?) -> Bool {
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate)
    }
    
    

}
