//
//  SettingsViewController.swift
//  Quote
//
//  Created by AllSpark on 14/11/19.
//  Copyright © 2019 AllSpark. All rights reserved.
//

import UIKit

class SettingsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      setupNavBarForLeftMenuIcon(title: "Settings")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonClicked(_ sender: Any) {
   
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
