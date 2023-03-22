//
//  SecondViewController.swift
//  SegueWithPremanent Storage
//
//  Created by Sadia on 13/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    var myName = ""
    var myId = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name: \(myName)"
        idLabel.text = "Id: \(myId)"
        
    }
    

}
