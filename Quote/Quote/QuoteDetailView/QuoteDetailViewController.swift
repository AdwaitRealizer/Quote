//
//  QuoteDetailViewController.swift
//  Quote
//
//  Created by AllSpark on 13/11/19.
//  Copyright © 2019 AllSpark. All rights reserved.
//

import UIKit

class QuoteDetailViewController: UIViewController {

    @IBOutlet var quoteTextView: UITextView!
    @IBOutlet var lblAuthName: UILabel!
    var strname: String?
    var strQuote: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        quoteTextView.text = strQuote
        if strname != "" {
        lblAuthName.text = strname
        } else {
            lblAuthName.text = "Unknown Author"
        }
        // Do any additional setup after loading the view.
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
