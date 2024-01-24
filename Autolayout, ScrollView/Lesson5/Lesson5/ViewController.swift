//
//  ViewController.swift
//  Lesson5
//
//  Created by Quang Nguyen on 24/01/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeView(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcB")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func changeCodeLayoutView(_ sender: Any) {
        let autoVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "autoCodeVC")
        navigationController?.pushViewController(autoVC, animated: true)
    }
    
    @IBAction func changeScrollView(_ sender: Any) {
        let scrollVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "scrollVC")
        navigationController?.pushViewController(scrollVC, animated: true)
    }
    
    @IBAction func moveCodeScrollView(_ sender: Any) {
        let codeScrollVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "srCodeVC")
        navigationController?.pushViewController(codeScrollVC, animated: true)
    }
}

