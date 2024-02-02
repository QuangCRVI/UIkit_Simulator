//
//  ViewController.swift
//  Lesson13
//
//  Created by Quang Nguyen on 02/02/2024.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrData = [Entries]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        getDataFromAPIGetEntries()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "TableCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "tableCell")
    }
    
    func getDataFromAPIGetEntries() { //Buoc 3
        if let url = URL(string: "https://api.publicapis.org/entries") {
            AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default,
                       headers: nil, interceptor: nil, requestModifier: nil).responseJSON { response in
                dump(response.value)
                if let dict = response.value as? [String: Any] {
                    if dict.count > 0 { // Check Du Lieu Co Tra Ve Hay Khong
                        if let data = dict["entries"] as? [NSDictionary] {
                            let result = data.map({Entries.deserialize(from: $0)!})
                            self.arrData.append(contentsOf: result)
                            self.tableView.reloadData()
                        }
                    } else {
                        print("Khong co data tra ve")
                    }
                }
            }
        }
    }
    
    @IBAction func changeView(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "priceVC") as! CurrentPriceVC
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableCell
        let data = arrData[indexPath.row]
        cell.lbAPI.text = data.API
        cell.lbDes.text = data.Description
        cell.lbAuth.text = data.Auth
        cell.lbHTTPs.text = "\(data.HTTPS)"
        cell.lbCors.text = data.Cors
        cell.lbLink.text = data.Link
        cell.lbCate.text = data.Category
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
}

//1. Xay Dung UI, kiem tra API
//2. Lay Data tu API tra ve
//3. Parse Json(Tao Object chua cac thuoc tinh)
//4. Hien thi du lieu len UI

//Thu vien quan trong - API
//1. Alamorefile - Get Post API
//2. Hendy Json - Parse Json

