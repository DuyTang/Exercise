//
//  ViewController.swift
//  Exercise
//
//  Created by Duy Tang on 5/28/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    var listCustomer : CustomerList = []
    var cust : Customer?
    var isLoggedIn = false
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor(btnRegister, color: 0xFF7F00)
        setColor(txtEmail, color: 0x3498DB)
        setColor(txtPassword, color: 0x3498DB)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func gotoAdd(sender: UIButton) {
        let registerViewController = self.storyboard!.instantiateViewControllerWithIdentifier("RegisterViewController") as! RegisterViewController
        self.presentViewController(registerViewController, animated: true, completion: nil)
    }
    @IBAction func gotoMain(sender: UIButton) {
        
        
        self.dismissViewControllerAnimated(true) { Void in
            
            print(self.txtEmail!.text)
            print(self.txtPassword!.text)
        }
        let email = txtEmail.text!
        let pass = txtPassword.text!
        for i in 0...listCustomer.count-1{
            if listCustomer[i].email == email && listCustomer[i].pass == pass{
                isLoggedIn = true
                print("true")
                break
            }else{
                isLoggedIn = false
                print("false")
            }
        }
       
        
    }
    func setColor(text : AnyObject, color: Int){
        
        text.layer.cornerRadius = 2.0
        text.layer.masksToBounds = true
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor(hex: color).CGColor
    }
    
    
}

