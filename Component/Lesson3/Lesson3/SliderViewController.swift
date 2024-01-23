//
//  SliderViewController.swift
//  Lesson3
//
//  Created by Quang Nguyen on 23/01/2024.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var sldControl: UISlider!
    @IBOutlet weak var lbValue: UILabel!
    
    // Create a slider = Code
    var sldSecond = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSliderControl()
        setupSecondSlider()
    }
    
    func setupSliderControl() {
        sldControl.minimumValue = 0
        sldControl.maximumValue = 100
        sldControl.value = 25
        sldControl.minimumTrackTintColor = .systemBlue
        sldControl.maximumTrackTintColor = .systemGroupedBackground
        sldControl.thumbTintColor = .white
        
        // Fill current value -> Label
        lbValue.text = "\(Int(sldControl.value))"
    }
    
    @IBAction func swipeSlider(_ sender: Any) {
        lbValue.text = "\(Int(sldControl.value))"
    }
    
    func setupSecondSlider() {
        let x = sldControl.frame.origin.x
        let y = sldControl.frame.origin.y + 95
        let w = sldControl.frame.width
        sldSecond.frame = CGRect(x: x, y: y, width: w, height: 30)
        view.addSubview(sldSecond)
        
        sldSecond.minimumValue = 0
        sldSecond.maximumValue = 1
        sldSecond.value = 0.5
        view.alpha = CGFloat(sldSecond.value)
        
        sldSecond.addTarget(self, action: #selector(swifeOnSecondSlider), for: .valueChanged)
    }
    
    @objc func swifeOnSecondSlider() {
        view.alpha = CGFloat(sldSecond.value)
    }
    
}
