//
//  MainViewController.swift
//  Exercise
//
//  Created by Duy Tang on 5/29/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let isLoggedIn = false
    
    @IBOutlet weak var listCus: UITableView!
    var listCustomer : CustomerList = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listCus.delegate = self
        listCus.dataSource = self
        listCus.registerNib(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTableViewCell")
        if isLoggedIn{
            loadData()
        } else {
            let loginViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
            self.presentViewController(loginViewController, animated: true, completion: nil)
            loadData()
        }
        //        loadData()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadData() {
        listCustomer = CustomerManager.sharedInstance.gellAll()
        listCus.reloadData()
    }
    @IBAction func gotoAdd(sender: AnyObject) {
        let addViewController = self.storyboard!.instantiateViewControllerWithIdentifier("AddCustomerViewController") as! AddCustomerViewController
        self.presentViewController(addViewController, animated: true, completion: nil)
    }
    
    
}




extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCustomer.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyTableViewCell", forIndexPath: indexPath) as! MyTableViewCell
        cell.setData(listCustomer[indexPath.row])
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110
    }
    //    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    //        if editingStyle == UITableViewCellEditingStyle.Delete
    //        {
    //            listCustomer.removeAtIndex(indexPath.row)
    //            loadData()
    //            
    //        }
    //    }
    
    
    
    
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let edit = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Edit", handler: { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
            
        })
        
        let del = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Delete", handler: { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
            self.listCustomer.removeAtIndex(indexPath.row)
            self.loadData()
        })
        
        return [edit, del]
    }
    
    
}

