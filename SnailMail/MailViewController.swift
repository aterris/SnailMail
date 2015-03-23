//
//  MailViewController.swift
//  SnailMail
//
//  Created by Evan Waters on 3/23/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

class MailViewController: UIViewController {
    

    @IBOutlet weak var mailText: UILabel!
    
    var mail:Mail!
    var from:Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mailText.text = generateMailText()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateMailText () -> String {
        var mailText:String = "Dear \(loggedInUser.name),\n\n\(mail.content)\n\nSincerely,\n\n\(from.name)"
        return mailText
    }
    

}