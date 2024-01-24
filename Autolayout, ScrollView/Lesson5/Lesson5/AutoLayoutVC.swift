//
//  AutoLayoutVC.swift
//  Lesson5
//
//  Created by Quang Nguyen on 24/01/2024.
//

import UIKit

class AutoLayoutVC: UIViewController {
    
    var btFirst = UIButton()
    var lbFirst = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupButton()
        setupLabel()
    }
    
    func setupButton() {
        view.addSubview(btFirst)
        btFirst.translatesAutoresizingMaskIntoConstraints = false
        btFirst.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        btFirst.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        btFirst.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        btFirst.heightAnchor.constraint(equalToConstant: 45).isActive = true
        btFirst.layer.cornerRadius = 10
        
        btFirst.backgroundColor = .red
        btFirst.setTitleColor(.white, for: .normal)
        btFirst.setTitle("Hello", for: .normal)
    }
    
    func setupLabel() {
        view.addSubview(lbFirst)
        lbFirst.translatesAutoresizingMaskIntoConstraints = false
        lbFirst.topAnchor.constraint(equalTo: btFirst.bottomAnchor, constant: 30).isActive = true
        lbFirst.leadingAnchor.constraint(equalTo: btFirst.leadingAnchor).isActive = true
        lbFirst.trailingAnchor.constraint(equalTo: btFirst.trailingAnchor).isActive = true
        lbFirst.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        lbFirst.backgroundColor = .black
        lbFirst.textColor = .white
        lbFirst.textAlignment = .left
        lbFirst.text = "adsdsadasdasd"
    }
}
