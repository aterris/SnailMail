//
//  MyMailboxViewController.swift
//  SnailMail
//
//  Created by Evan Waters on 3/11/15.
//  Copyright (c) 2015 Evan Waters. All rights reserved.
//

import UIKit

var mails:[Mail] = mailData

class MyMailboxViewController: UITableViewController {


    var mailForUser:[Mail]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mailForUser = getMailForUser(mails)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func getMailForUser(mails: Array<Mail>) -> Array<Mail> {
        var mailForUser = [Mail]()
        for mail in mails {
            if mail.to == loggedInUser.username {
                mailForUser.append(mail)
            }
        }
        return mailForUser
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mailForUser.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MailCell", forIndexPath: indexPath) as MailCell
        
        let mail = mailForUser[indexPath.row] as Mail
        let fromPerson = getPerson(mail.from)
        
        cell.mail = mail
        cell.from = fromPerson
        cell.fromLabel.text = "From: \(fromPerson.name)"
        
        return cell
        
    }
    
    //I'm sure there is a better way to do this...
    func getPerson(username: String) -> Person {
        var person_to_get:Person!
        for person in people {
            if person.username == username {
                person_to_get = person
            }
        }
        return person_to_get
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewMail" {
            let mailViewController = segue.destinationViewController as MailViewController
            if let mailCell = sender as? MailCell {
                mailViewController.mail = mailCell.mail
                mailViewController.from = mailCell.from
                
            }
        }
    }

}
