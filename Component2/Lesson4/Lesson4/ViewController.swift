//
//  ViewController.swift
//  Lesson4
//
//  Created by Quang Nguyen on 23/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var stpControl: UIStepper!
    @IBOutlet weak var swtOnOff: UISwitch!
   
    
    // Create stepper = Code
    var stpSecond = UIStepper()
    
    // Create switch = Code
    var swtSecond = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupStepper()
        setupSecondStepper()
        setupSwitchOnOff()
        setupSecondSwitch()
    }
    
    func setupStepper() {
        stpControl.minimumValue = 0
        stpControl.maximumValue = 100
        stpControl.stepValue = 20
        stpControl.value = 0
        lbResult.text = "\(stpControl.value)"
    }

    @IBAction func tapOnStepper(_ sender: Any) {
        lbResult.text = "\(stpControl.value)"
    }
    
    func setupSecondStepper() {
        let y = stpControl.frame.origin.y
        stpSecond.frame = CGRect(x: 10, y: y, width: 94, height: 32)
        view.addSubview(stpSecond)
        
        stpSecond.minimumValue = 0
        stpSecond.maximumValue = 1
        stpSecond.value = 1
        stpSecond.stepValue = 0.1
        
        stpSecond.addTarget(self, action: #selector(changeViewAlpha), for: .valueChanged)
    }
    
    @objc func changeViewAlpha() {
        if stpSecond.value > 0.1 {
            view.alpha = CGFloat(stpSecond.value)
        }
    }
    
    func setupSwitchOnOff() {
        swtOnOff.thumbTintColor = .white
        swtOnOff.onTintColor = .systemGreen
        swtOnOff.isOn = false
    }
    
    @IBAction func tapOnSwitch(_ sender: Any) {
        let text = swtOnOff.isOn == true ? "Switch is on" : "Switch is off"
        lbResult.text = text
    }
    
    func setupSecondSwitch() {
        let x = swtOnOff.frame.origin.x + swtOnOff.frame.width + 50
        let y = swtOnOff.frame.origin.y
        swtSecond.frame = CGRect(x: x, y: y, width: 49, height: 31)
        view.addSubview(swtSecond)
        
        swtSecond.isOn = false
        
        swtSecond.addTarget(self, action: #selector(tapOnSecondSwt), for: .valueChanged)
    }
    
    @objc func tapOnSecondSwt() {
        swtOnOff.isHidden = swtSecond.isOn
    }
    
    @IBAction func changeView(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcB")
                navigationController?.pushViewController(vc, animated: true)
    }
}

