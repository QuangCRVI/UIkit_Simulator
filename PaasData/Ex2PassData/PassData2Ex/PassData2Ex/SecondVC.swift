//
//  SecondVC.swift
//  PassData2Ex
//
//  Created by Quang Nguyen on 30/01/2024.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var lbTitile2: UILabel!
    @IBOutlet weak var imgSecond: UIImageView!
    @IBOutlet weak var lbDescrible2: UILabel!
    
   var name = MenuNew()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbTitile2.text = name.title
        imgSecond.image = UIImage(named: name.image)
        lbDescrible2.text = name.describe
    }

    @IBAction func changeView(_ sender: Any) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}
