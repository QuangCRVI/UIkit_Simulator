//
//  ViewController.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfJob: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func tapOnMove(_ sender: Any) {
        view.endEditing(true)
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "screen2") as! Screen2 // Cast
        vc.name = tfName.text ?? "Làm gì mà có" // Pass name
        vc.age = tfAge.text! // Pass age
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapOnScreen3(_ sender: Any) {
        view.endEditing(true)
            
        if tfName.text == "" {
            print("Please enter your name")
            return
        }

        if tfAge.text == "" {
            print("Please enter your age")
            return
        }

        if tfJob.text == "" {
           print("Please enter your Job")
            return
        }
        
        let vc = Screen3(nibName: "Screen3", bundle: nil)
        let person = Person(name: tfName.text!, age: tfAge.text!, job: tfJob.text!)
        vc.person = person
        //vc.modalPresentationStyle = .fullScreen
        //present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

// Các cách Pass Data
// 1. Sử dụng Instance
// 2. Sử dụng Design Pattern Singleton -> Chỉ lưu trong Session
