//
//  ViewController.swift
//  ContatApp
//
//  Created by Roman Zhukov on 28.12.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text?.append(" \(person.phone)")
        emailLabel.text?.append(" \(person.email)")
    }
}

