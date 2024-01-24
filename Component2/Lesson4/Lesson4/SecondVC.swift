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
   
    // Create time for progress view
    var timer = Timer()
    
    // Change color of selected segment
    let titleTextAttributesChange = [NSAttributedString.Key.foregroundColor: UIColor.white]
    let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    
    // Create segment = code
    var segmentedSecond = UISegmentedControl()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSegmentdControl()
        setupSegmentedSecond()
        setupProgressView()
        setupLoading()
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
    
    func setupLoading() {
        aivLoading.hidesWhenStopped = true
        aivLoading.color = .orange
    }
    
    func setupProgressView() {
        progressView.progressTintColor = .link
        progressView.trackTintColor = .systemGroupedBackground
        progressView.progress = 0.01
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(runProgress), userInfo: nil, repeats: true)
    }
    
    @objc func runProgress() {
        progressView.progress += 0.01
        if Double(progressView.progress) == timer.timeInterval {
            aivLoading.stopAnimating()
            aivLoading.isHidden = true
        }
    }
       
    @IBAction func moveView(_ sender: Any) {
        let vc  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webVC")
        navigationController?.pushViewController(vc, animated: true)
    }
}
