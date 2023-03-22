//
//  ViewController.swift
//  SegueWithPremanent Storage
//
//  Created by Sadia on 13/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    
    var userName = ""
    var userId = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if let userName = nameTextField.text,let userId = idTextField.text, !userName.isEmpty, !userId.isEmpty {
            self.userName = userName
            self.userId = userId
            performSegue(withIdentifier: "dataTransfer", sender: nil)
        }else{
            let alert = UIAlertController(title: "Error", message: "Please fill up the informations", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            
            alert.addAction(okButton)
            present(alert, animated: true)
            
        }
        
       
    }
    
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        nameTextField.text = ""
        idTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dataTransfer" {
                    let destinationVC = segue.destination as! SecondViewController
                    destinationVC.myName = userName
                    destinationVC.myId = userId
        }
    }
    
}

