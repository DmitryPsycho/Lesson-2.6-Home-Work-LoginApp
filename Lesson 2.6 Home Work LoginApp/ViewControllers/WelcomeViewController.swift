//
//  WelcomeViewController.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 02.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userName: UILabel!
    
    var loginName: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = "Welcome, \(loginName.userName)!"
    }
}

