

//
//  LogInViewController.swift
//  Quote
//
//  Created by AllSpark on 14/11/19.
//  Copyright © 2019 AllSpark. All rights reserved.
//

import UIKit
import Firebase
class LogInViewController: BaseViewController {
    
    // MARK: IBOutlets and veriables
    
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarForLeftMenuIcon(title: "Login")
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    //  MARK : HANDEL LOGIN ACTION
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error == nil{
                let quoteHomeViewController = self.storyboard?.instantiateViewController(withIdentifier: "QuotesHomeViewController") as? QuotesHomeViewController
                quoteHomeViewController?.hasSuccesfullLoginOrSignUp = true
                self.navigationController?.pushViewController(quoteHomeViewController!, animated: true)
                
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
}
