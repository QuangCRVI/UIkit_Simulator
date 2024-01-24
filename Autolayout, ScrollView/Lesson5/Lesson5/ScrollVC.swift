//
//  ScrollVC.swift
//  Lesson5
//
//  Created by Quang Nguyen on 24/01/2024.
//

import UIKit

class ScrollVC: UIViewController {
    
    var scrollView = UIScrollView()
    var viewInside = UIView()
    var lb1 = UILabel()
    var lb2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        setupScrollView()
        setupLabelFirst()
        setupLabelSecond()
    }
    
    func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollView.addSubview(viewInside)
        
        viewInside.translatesAutoresizingMaskIntoConstraints = false
        viewInside.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        viewInside.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        viewInside.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        viewInside.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        viewInside.heightAnchor.constraint(equalToConstant: 2000).isActive = true
        viewInside.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
    }
   
    func setupLabelFirst() {
        view.addSubview(lb1)
        lb1.translatesAutoresizingMaskIntoConstraints = false
        lb1.topAnchor.constraint(equalTo: viewInside.topAnchor, constant: 40).isActive = true
        lb1.leadingAnchor.constraint(equalTo: viewInside.leadingAnchor, constant: 50).isActive = true
        lb1.trailingAnchor.constraint(equalTo: viewInside.trailingAnchor, constant: -50).isActive = true
        
        lb1.text = "Hello"
        lb1.backgroundColor = .blue
    }
    
    func setupLabelSecond() {
        view.addSubview(lb2)
        lb2.translatesAutoresizingMaskIntoConstraints = false
        lb2.bottomAnchor.constraint(equalTo: viewInside.bottomAnchor, constant: -40).isActive = true
        lb2.leadingAnchor.constraint(equalTo: viewInside.leadingAnchor, constant: 50).isActive = true
        lb2.trailingAnchor.constraint(equalTo: viewInside.trailingAnchor, constant: -50).isActive = true
        
        lb2.text = "Hello"
        lb2.backgroundColor = .red
    }

}
