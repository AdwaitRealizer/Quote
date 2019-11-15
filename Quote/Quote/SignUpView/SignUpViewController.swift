//
//  SignUpViewController.swift
//  Quote
//
//  Created by AllSpark on 14/11/19.
//  Copyright © 2019 AllSpark. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: BaseViewController {

    @IBOutlet var confirmPassswordTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    setupNavBarForLeftMenuIcon(title: "Sign up")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpButtonCliked(_ sender: Any) {
        if passwordTextField.text != confirmPassswordTextField.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!){ (user, error) in
                if error == nil {
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
