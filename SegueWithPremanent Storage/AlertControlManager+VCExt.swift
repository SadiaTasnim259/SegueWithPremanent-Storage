//
//  AlertControlManager+VCExt.swift
//  SegueWithPremanent Storage
//
//  Created by Sadia on 22/3/23.
//

import UIKit

extension UIViewController{
    func showAlert(title: String, message: String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel)
        
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        
        self.present(alert, animated: true)
    }
}
