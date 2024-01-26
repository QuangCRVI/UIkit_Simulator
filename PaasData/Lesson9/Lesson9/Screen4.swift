//
//  Screen4.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

class Screen4: UIViewController {
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var lbJob: UILabel!
    @IBOutlet weak var lbCompany: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        if let data = Data.share.personData {
            lbName.text = "My name is \(data.name)"
            lbAge.text = "I'm \(data.age) years old"
            lbJob.text = "I'm \(data.job)"
            lbCompany.text = "I work in \(data.company)"
        }
        
        let userDefaults = UserDefaults.standard
        if let data = userDefaults.object(forKey: KEY_PERSON_NAME) { // Get Data
            dump(data)
        }
    }
}
