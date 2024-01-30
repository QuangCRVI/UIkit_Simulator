//
//  ThirdVC.swift
//  PassData2Ex
//
//  Created by Quang Nguyen on 30/01/2024.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var lbTitle3: UILabel!
    @IBOutlet weak var imgNew: UIImageView!
    @IBOutlet weak var lbLine: UILabel!
    
    var news =  MenuNew()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        navigationItem.hidesBackButton = true
    }
    func setupView() {
        lbTitle3.text = news.title
        imgNew.image = UIImage(named: news.image)
        lbLine.text = news.line
    }
    @IBAction func backHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
