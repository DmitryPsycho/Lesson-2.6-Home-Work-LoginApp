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
    
    var selfInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selfInfo.personInfo.title
        infoLabel.text = selfInfo.personInfo.info
        jobLabel.text = selfInfo.personInfo.job
    }
}
