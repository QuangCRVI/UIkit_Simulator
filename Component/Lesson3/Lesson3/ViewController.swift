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
    @IBOutlet weak var tfEnter: UITextField!
    @IBOutlet weak var tvNews: UITextView!
    
    // create label = code
    var lbSecond = UILabel()
    // create button = code
    var btSecond = UIButton()
    // create textfield = code
    var tfSecond = UITextField()
    // create textView = code
    var tvSecond = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLabel()
        setupSecondLabel()
        setupButtonClick()
        setupSecondButton()
        setupTextFieldEnter()
        setupSecondTextField()
        setupTextView()
        setupSecondTextView()
    }
    
    func setupLabel() {
        lbName.text = "Hello World with iOS!!!"
        lbName.textColor = UIColor.brown
        lbName.textAlignment = NSTextAlignment.left
    }
    
    func setupSecondLabel() {
        lbSecond.frame = CGRect(x: 20, y: 90, width: 200, height: 30)
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
        view.endEditing(true) //Ket thuc viec nhap lieu
    }
    
    func setupTextFieldEnter() {
        tfEnter.textAlignment = .center
        tfEnter.font = UIFont.systemFont(ofSize: 18)
        tfEnter.borderStyle = UITextField.BorderStyle.line
        tfEnter.placeholder = "Enter your phone"
        tfEnter.layer.cornerRadius = 10
        tfEnter.delegate = self
    }
    
    func setupSecondTextField() {
        let x = tfEnter.frame.origin.x + 50
        let y = tfEnter.frame.origin.y + tfEnter.frame.height + 20
        let w = tfEnter.frame.width
        let h = tfEnter.frame.height
        tfSecond.frame = CGRect(x: x, y: y, width: w, height: h)
        view.addSubview(tfSecond)
        
        tfSecond.placeholder = "Enter your password"
        tfSecond.borderStyle = UITextField.BorderStyle.roundedRect
        tfSecond.isSecureTextEntry = true
        tfSecond.textAlignment = .center
        
        tfSecond.delegate = self
    }
    
    func setupTextView() {
        tvNews.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
        tvNews.textAlignment = NSTextAlignment.justified
        tvNews.textColor = .blue
        tvNews.isEditable = true
    }
    
    func setupSecondTextView() {
        tvSecond.frame = CGRect(x: 40, y: 140, width: 200, height: 55)
        view.addSubview(tvSecond)
        
        tvSecond.text = "This is a second textview"
        tvSecond.backgroundColor = .orange
        tvSecond.textColor = .white
        tvSecond.isSelectable = false
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        let message = textField == tfEnter ? "Open Contact": "Open Calender"
//        print(message)
        if textField == tfEnter {
            print("Open Contact")
            return true
        } else {
            print("Open Calender")
        }
        return false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == tfEnter {
            print("Your entered text in TFEnter")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == tfEnter {
            print(tfEnter.text!)
        }
    }
}
