//
//  LogInViewController2.swift
//  SnailMail
//
//  Created by Evan Waters on 3/20/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

var people:[Person] = personData

class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var UsernameTextField: UITextField!

    var person:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func LogIn(sender: AnyObject) {
        for user in people {
            if user.username == UsernameTextField.text {
                loggedInUser = user
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
    }
    
}