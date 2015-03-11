//
//  MyMailboxViewController.swift
//  SnailMail
//
//  Created by Evan Waters on 3/11/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

class MyMailboxViewController: UITableViewController {
    
    @IBOutlet weak var welcomeText: UILabel!
    var person:Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let person = person {
            welcomeText.text = "Welcome, \(person.name)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
