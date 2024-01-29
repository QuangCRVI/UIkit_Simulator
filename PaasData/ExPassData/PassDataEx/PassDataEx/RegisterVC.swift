//
//  RegisterVC.swift
//  PassDataEx
//
//  Created by Quang Nguyen on 29/01/2024.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func checkInput() -> Bool {
        let phone = tfPhone.text
        let email = tfEmail.text
        
        if phone!.isEmpty || email!.isEmpty {
            return true
        }
        return false
    }
    
    @IBAction func clickRegister(_ sender: Any) {
        view.endEditing(true)
        
        if checkInput() {
            let alert = UIAlertController(title: "Cảnh báo!!", message: "Vui lòng nhập đủ thông tin",  preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        let name = person.name
        let age = person.age
        let address = person.address
        
        let alert = UIAlertController(title: "Thông tin đăng ký", message: "Họ và tên: \(name)\nTuổi: \(age)\nĐịa chỉ: \(address)\nSố điện thoại: \(tfPhone.text!)\nEmail: \(tfEmail.text!)",  preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
