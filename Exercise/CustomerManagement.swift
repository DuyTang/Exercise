//
//  CustomerManagement.swift
//  Exercise
//
//  Created by Duy Tang on 5/29/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import Foundation

typealias CustomerList = [Customer]

class CustomerManager {
    
    static let sharedInstance = CustomerManager()
    
    func gellAll() -> CustomerList {
        return customers
    }
    
    func save(data: Customer?) {
        customers.append(data!)
        print(customers)
    }
}

var customers = [Customer(first: "AAA", lst: "dfds", age: 20, email: "a@gamil.com", pass: "admin", address:"Vinh-NA", img: "1.jpeg", gender: "Male", single: "yes", education: "12/12"),
                 Customer(first: "BBB", lst: "dfds", age: 20,email: "b@yahoo.com",pass: "admin", address:"Vinh-NA", img: "2.jpeg", gender: "Male", single: "no", education: "12/12")]


class Customer {
    var firstName: String?
    var lastName: String?
    var age : Int?
    var email: String?
    var pass: String?
    var address: String?
    var img: String?
    var gender: String?
    var single: String?
    var education: String?
    
    init(first: String?, lst: String?,age: Int?, email : String?, pass: String?, address: String?, img: String?, gender: String?, single: String?,education: String?){
        self.firstName = first
        self.lastName = lst
        self.age = age
        self.email = email
        self.pass = pass
        self.address = address
        self.img = img
        self.gender = gender
        self.single = single
        self.education = education
    }
    
}
