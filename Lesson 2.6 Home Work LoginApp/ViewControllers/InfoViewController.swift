//
//  InfoViewController.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 05.07.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    private let info = User.getUser()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = info.personInfo.title
        infoLabel.text = info.personInfo.info
        jobLabel.text = info.personInfo.job
    }
}
