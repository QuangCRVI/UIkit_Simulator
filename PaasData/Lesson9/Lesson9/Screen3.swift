//
//  Screen3.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

class Screen3: UIViewController {

    @IBOutlet weak var lbJob: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var lbName: UILabel!
    
    var person = Human()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    func setupView() {
        lbName.text = "My name is "
        lbAge.text = "I'm  years old"
        lbJob.text = "I'm "
    }
}
