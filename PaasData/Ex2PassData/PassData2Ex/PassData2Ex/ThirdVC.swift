//
//  ThirdVC.swift
//  PassData2Ex
//
//  Created by Quang Nguyen on 30/01/2024.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
    }

    @IBAction func backHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
