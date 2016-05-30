//
//  AddCustomerViewController.swift
//  Exercise
//
//  Created by Duy Tang on 5/29/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    let pickerImage = UIImagePickerController()
    var listCustomer: CustomerList = []
    var thamSo = NSUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerImage.delegate = self
        setColor(txtFirstName)
        setColor(txtLastName)
        setColor(txtAge)
        setColor(txtEmail)
        setColor(txtPassword)
        setColor(txtAddress)
        setColor(imgAvatar)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadImage(sender: UIButton) {
        pickerImage.allowsEditing = false
        pickerImage.sourceType = .PhotoLibrary
        presentViewController(pickerImage, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imgAvatar.contentMode = .ScaleAspectFit
            imgAvatar.image = pickedImage
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func gotoMain(sender: UIButton) {
        //let mainViewController = self.storyboard!.instantiateViewControllerWithIdentifier("MainViewController") as! MainViewController
        //self.presentViewController(mainViewController, animated: true, completion: nil)
        self.dismissViewControllerAnimated(true){ Void in
            
        }
    }
    func setColor(text : AnyObject){
        
        text.layer.cornerRadius = 2.0
        text.layer.masksToBounds = true
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor(hex: 0x3498DB).CGColor
    }
    
    @IBOutlet weak var subView: UIView!
    @IBAction func showHideSubView(sender: AnyObject) {
        //self.view.viewWithTag(1)?.hidden = true
        self.subView.viewWithTag(1)?.hidden = true
        
    }

    
    
    // save data
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        thamSo.setObject(txtFirstName.text, forKey: "bien")
        thamSo.setObject(txtLastName.text, forKey: "bien1")
        thamSo.setObject(txtAge.text, forKey: "bien2")
        thamSo.setObject(txtEmail.text, forKey: "bien3")
        thamSo.setObject(txtPassword.text, forKey: "bien4")
        thamSo.setObject(txtAddress.text, forKey: "bien5")
        //imgAvatar.image
        
    }
    
    
    
}
