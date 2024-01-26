//
//  Screen5.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

class Screen5: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func tapOnAddNewUser(_ sender: Any) {
        let vc = AddNewUserVC(nibName: "AddNewUserVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
