//
//  ViewController.swift
//  Lesson3
//
//  Created by Quang Nguyen on 22/01/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btClick: UIButton!
    
    // create label = code
    var lbSecond = UILabel()
    var btSecond = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLabel()
        setupSecondLabel()
        setupButtonClick()
        setupSecondButton()
    }
    
    func setupLabel() {
        lbName.text = "Hello World with iOS!!!"
        lbName.textColor = UIColor.brown
        lbName.textAlignment = NSTextAlignment.left
    }
    
    func setupSecondLabel() {
        lbSecond.frame = CGRect(x: 20, y: 90, width: 200, height: 50)
        view.addSubview(lbSecond)
        
        // set attri
        lbSecond.backgroundColor = UIColor.black
        lbSecond.textColor = .white
        lbSecond.textAlignment = NSTextAlignment.center
        lbSecond.text = "I'm iOS developer"
        lbSecond.numberOfLines = 0
        lbSecond.layer.cornerRadius = 8
        lbSecond.layer.masksToBounds = true
    }
    
    func setupButtonClick() {
        btClick.setTitle("Tap me", for: .normal)
        btClick.backgroundColor = .brown
        btClick.setTitleColor(.white, for: .normal)
        btClick.setImage(UIImage(), for: .normal)
        btClick.layer.cornerRadius = 10
        btClick.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btClick.layer.masksToBounds = true
    }
        
    @IBAction func tapOnClick(_ sender: Any) {
        print("Thank you for tapping")
        btClick.isSelected = !btClick.isSelected
        if btClick.isSelected == true {
            btClick.backgroundColor = .blue
        } else {
            btClick.backgroundColor = .red
        }
    }
    
    func setupSecondButton() {
        view.addSubview(btSecond)
        let x = btClick.frame.origin.x
        let y = btClick.frame.origin.y + btClick.frame.height + 20
        let w = btClick.frame.width
        let h = btClick.frame.height
        btSecond.frame = CGRect(x: x, y: y, width: w, height: h)
        btSecond.setTitle("Register", for: .normal)
        btSecond.backgroundColor = .brown
        btSecond.layer.cornerRadius = 8
        
        btSecond.addTarget(self, action: #selector(tapOnRegister), for: .touchUpInside)
    }
    
    @objc func tapOnRegister() {
        print("Thanks for resgister")
    }
}

