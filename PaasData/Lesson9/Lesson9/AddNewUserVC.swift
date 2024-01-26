//
//  AddNewUserVC.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import UIKit

// Step 1
protocol AddNewUserDelegate {
    func addNewUser(user: User)
}


class AddNewUserVC: UIViewController {

    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    // Step 2
    var delegate: AddNewUserDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func tapOnAddUser(_ sender: Any) {
        if tfName.text == "" {
            print("Please enter your name")
            return
        }

        if tfAge.text == "" {
            print("Please enter your age")
            return
        }
        let user = User(name: tfName.text!, age: tfAge.text!)
        // Step 3
        delegate?.addNewUser(user: user)
        navigationController?.popViewController(animated: true)
    }
}

// Cách sử dụng Delegate-Protocol
// B1: Khai báo Protocol - Trong Protocol phải có function khai báo cho hành động
// B2: Tạo ra 1 biến có tên là 'Delegate' có kiểu của Protocol
// B3: Trong bước thực thi cần gọi đến Function trong Protocol
// B4: Khai báo Delegate = self
// B5: Thực thi logic để hiển thị dữ liệu mới
