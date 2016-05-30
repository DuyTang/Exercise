//
//  RegisterViewController.swift
//  Exercise
//
//  Created by Duy Tang on 5/30/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtRePass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func registerAccount(sender: UIButton) {
    }
    @IBAction func gotoLogin(sender: UIButton) {
        let loginViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        self.presentViewController(loginViewController, animated: true, completion: nil)
        
    }
    
}
