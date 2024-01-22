//
//  ViewController.swift
//  LifeCycle
//
//  Created by Quang Nguyen on 22/01/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Run second")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Run third")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Run fourth")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Run fifth")
    }

    @IBAction func tapOnButton(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcB")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

// Luồng ViewController Life Cycle- Vòng Đời 1 View Controller
// 1. ViewDidLoad
// - Gọi 1 lần trong chu kỳ của view
// - Thường dùng chuẩn bị data và khởi tạo giá trị mặc định cho các Object cũng như UI trên màn hình
// 2. ViewWillAppear
// - Được gọi khi view được thêm vào hệ thống view và dùng hiển thị animation
// 3. ViewDidAppear
// - Được gọi khi màn hình đã được hiển thị
// 4. ViewWillDisappear
// - Được gọi khi view được ẩn khỏi màn hình và animation khi ẩn view đó
// 5. ViewDidDisappear
// - Được gọi sau khi màn hình đã được ẩn đi
