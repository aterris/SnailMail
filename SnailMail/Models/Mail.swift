//
//  Mail.swift
//  SnailMail
//
//  Created by Evan Waters on 3/20/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

class Mail: NSObject {
    var from:String
    var to:String
    var content:String
    
    init(from:String, to:String, content:String) {
        self.from = from
        self.to = to
        self.content = content
        super.init()
    }
}