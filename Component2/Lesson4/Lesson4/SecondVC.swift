//
//  SecondVC.swift
//  Lesson4
//
//  Created by Quang Nguyen on 23/01/2024.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var aivLoading: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    // Create array for picker view
    var arr = ["male", "female"]
    var list = ["iPhone", "iPad", "macbook", "apple watch", "mac mini"]
    
    // Create time for progress view
    var timer = Timer()
    
    // Change color of selected segment
    let titleTextAttributesChange = [NSAttributedString.Key.foregroundColor: UIColor.white]
    let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    
    // Create segment = code
    var segmentedSecond = UISegmentedControl()
    
    // Create picker = code
    var secondPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSegmentdControl()
        setupSegmentedSecond()
        setupProgressView()
        setupLoading()
        setupPickerView()
        setupSecondPicker()
    }
    
    func setupSegmentdControl() {
        segmentControl.selectedSegmentTintColor = .systemBlue
        segmentControl.selectedSegmentIndex = 2
        lbResult.text = "Third"
        
        // Change color of selected segment
        segmentControl.setTitleTextAttributes(titleTextAttributesChange, for: .selected)
        segmentControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
    }

    @IBAction func tapOnSegmentedControl(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            lbResult.text = "First"
        } else if segmentControl.selectedSegmentIndex == 1 {
            lbResult.text = "Second"
        } else {
            lbResult.text = "Third"
        }
    }
    
    func setupSegmentedSecond() {
        // Create value first
        let arr = ["iPhone", "iPad", "macbook"]
        segmentedSecond = UISegmentedControl(items: arr)
        
        let x = segmentControl.frame.origin.x
        let y = segmentControl.frame.origin.y + segmentControl.frame.height + 100
        let w = segmentControl.frame.width
        segmentedSecond.frame = CGRect(x: x, y: y, width: w, height: 31)
        view.addSubview(segmentedSecond)
        
        segmentedSecond.selectedSegmentIndex = 0
        segmentedSecond.selectedSegmentTintColor = .brown
        segmentedSecond.backgroundColor = UIColor.systemGroupedBackground
        segmentedSecond.tintColor = .black
        
        // Change color of selected segment
        segmentedSecond.setTitleTextAttributes(titleTextAttributesChange, for: .selected)
        segmentedSecond.setTitleTextAttributes(titleTextAttributes, for: .normal)
        
        segmentedSecond.addTarget(self, action: #selector(tapOnSecondSegmentd), for: .valueChanged)
    }
    
    @objc func tapOnSecondSegmentd() {
        if segmentedSecond.selectedSegmentIndex == 0 {
            lbResult.text = "iphone tab"
        }else if segmentedSecond.selectedSegmentIndex == 1 {
            lbResult.text = "ipad tab"
        }else {
            lbResult.text = "macbook tab"
        }
    }
    
    func setupProgressView() {
        progressView.progressTintColor = .link
        progressView.trackTintColor = .systemGroupedBackground
        progressView.progress = 0.01
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(runProgress), userInfo: nil, repeats: true)
    }
   
    @objc func runProgress() {
        progressView.progress += 0.1
        if Int(progressView.progress) == Int(timer.timeInterval) {
            aivLoading.stopAnimating()
        }
    }
    
    func setupLoading() {
        aivLoading.hidesWhenStopped = true
        aivLoading.color = .orange
    }
    
    func setupPickerView() {
        pickerView.delegate = self
        pickerView.dataSource = self
       
    }
    
    func setupSecondPicker() {
        let x = pickerView.frame.origin.x
        let y = pickerView.frame.origin.y + pickerView.frame.height + 20
        let w = pickerView.frame.width
        let h = pickerView.frame.height
        secondPicker.frame = CGRect(x: x, y: y, width: w, height: h)
        view.addSubview(secondPicker)
        
        secondPicker.delegate = self
        secondPicker.dataSource = self
    }
    
    @IBAction func moveView(_ sender: Any) {
        let vc  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webVC")
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension SecondVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.pickerView {
            return arr.count
        } else {
            return list.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.secondPicker {
            return list[row]
        } else {
            return arr[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.secondPicker {
            print(list[row])
        } else {
            print(arr[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 20
    }
}

// Show dữ liệu trên PickerView
// 1. Khai báo Delegate + Dât Source
// 2. Set Class kế thừa UIPickerViewDelegate, UIPickerViewDataSource
// 3. Viết Extension
// 4. Khai báo số cột + số dòng
// 5. Khai báo nguồn dữ liệu hiển thị

