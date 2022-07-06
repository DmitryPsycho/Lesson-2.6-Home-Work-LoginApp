//
//  AboutViewController.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 05.07.2022.
//

import UIKit
import SwiftUI

class AboutViewController: UIViewController {
    
    @IBOutlet var hobbiesLabel: UILabel!
    
    private let hobbiesInfo = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbiesLabel.text = hobbiesInfo.personInfo.hobbies
    }
}
