//
//  MyTableViewCell.swift
//  Exercise
//
//  Created by Duy Tang on 5/29/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       setColor(imgAvatar)
        self.imgAvatar.layer.cornerRadius = self.imgAvatar.frame.size.width / 2;
        self.imgAvatar.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(cust: Customer?){
        lblFirstName.text = cust?.firstName
        lblLastName.text = cust?.lastName
        lblEmail.text = cust?.email
        imgAvatar.image = UIImage(named: (cust?.img)!)
    }
    
    func setColor(text : AnyObject){
        
        text.layer.cornerRadius = 2.0
        text.layer.masksToBounds = true
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor(hex: 0xFF7F00).CGColor
    }

    
}
