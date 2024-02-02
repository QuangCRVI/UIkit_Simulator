//
//  ViewController.swift
//  Lesson12
//
//  Created by Quang Nguyen on 01/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func tapOnLogin(_ sender: Any) {
        view.endEditing(true)

        if tfName.text == "" {
            // basic usage
            // self.view.makeToast("")
            return
        }
    }
}

