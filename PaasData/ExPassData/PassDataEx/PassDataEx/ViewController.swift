//
//  ViewController.swift
//  PassDataEx
//
//  Created by Quang Nguyen on 29/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfAddress: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var btNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func checkInput() -> Bool {
        let name = tfName.text
        let age = tfAge.text
        let address = tfAddress.text

        if name!.isEmpty || age!.isEmpty || address!.isEmpty {
            return true
        }
        return false
    }

    @IBAction func nextView(_ sender: Any) {
        view.endEditing(true)
        
        if checkInput() {
            let alert = UIAlertController(title: "Cảnh báo!!", message: "Vui lòng nhập đủ thông tin",  preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        let vc = RegisterVC(nibName: "RegisterVC", bundle: nil)
        let person = Person(name: tfName.text!, age: tfAge.text!, address: tfAddress.text!)
        vc.person = person
        navigationController?.pushViewController(vc, animated: true)
    }
}




