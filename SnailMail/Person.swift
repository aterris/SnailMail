//
//  Person.swift
//  SnailMail
//
//  Created by Evan Waters on 3/11/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import Foundation

import UIKit

class Person: NSObject {
    var username:String
    var name:String
    var address1:String
    var city:String
    var state:String
    var zip:String
    
    init(username:String, name:String, address1:String, city:String, state:String, zip:String) {
        self.username = username
        self.name = name
        self.address1 = address1
        self.city = city
        self.state = state
        self.zip = zip
        super.init()
    }
}