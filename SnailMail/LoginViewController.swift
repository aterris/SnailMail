//
//  LoginViewController.swift
//  SnailMail
//
//  Created by Evan Waters on 3/11/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

class LoginViewController: UITableViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    var people:[Person] = personData
    var person:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "LogIn" {
            getLoginInfo()
            let myMailBoxViewController = segue.destinationViewController as MyMailboxViewController
            myMailBoxViewController.person = person
        }
    }
    
    func getLoginInfo() {
        println("Got this far")
        println("\(usernameField.text)")
        for user in people {
            println("\(user.username)")
            if user.username == usernameField.text {
                person = user
            }
        }
    }

}