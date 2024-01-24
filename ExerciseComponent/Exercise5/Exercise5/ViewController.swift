//
//  ViewController.swift
//  Exercise5
//
//  Created by Quang Nguyen on 24/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var tfGender: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    var arr = ["Male", "Female", "Third gender"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupPickerView()
        setupTextField()
    }
    
    func setupPickerView() {
        pickerView.delegate = self
        pickerView.dataSource = self
        
        // Lua chon row chop picker thay vi row mac dinh
        pickerView.selectRow(1, inComponent: 0, animated: true)
        
    }
    
    func setupTextField() {
        tfGender.delegate = self
        
        tfGender.text = "Female"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Off KeyBoard
        view.endEditing(true)
    }
    
    @IBAction func tapOnRegister(_ sender: Any) {
        if tfName.text == "" || tfAge.text == "" {
            print("Plesea enter all required fields")
        } else {
            print("Register Successful")
        }
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tfGender.text = arr[row]
        pickerView.isHidden = true
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        pickerView.isHidden = false
        view.endEditing(true)
        return false
    }
}
