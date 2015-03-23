//
//  ComposeMailViewController.swift
//  SnailMail
//
//  Created by Evan Waters on 3/23/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

class ComposeMailViewController: UIViewController {
    
    
    @IBOutlet weak var composeText: UITextView!
    @IBOutlet weak var toField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resignFirstResponder()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
