//
//  Screen2.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

class Screen2: UIViewController {

    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var lbName: UILabel!
    
    var name: String = ""
    var age: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        lbName.text = "My name is \(name)"
        lbAge.text = "I'm \(age) years old"
    }
}
