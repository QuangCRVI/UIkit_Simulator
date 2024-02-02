//
//  CurrentPriceVC.swift
//  Lesson13
//
//  Created by Quang Nguyen on 02/02/2024.
//

import UIKit
import Alamofire

class CurrentPriceVC: UIViewController {
    
    @IBOutlet weak var priceTableView: UITableView!
    var arrData = [CoinDesk]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        getDataFromAPICoinDesk()
    }
    
    func setupTableView() {
        priceTableView.delegate = self
        priceTableView.dataSource = self
        
        let nib = UINib(nibName: "PriceCell", bundle: nil)
        priceTableView.register(nib, forCellReuseIdentifier: "priceCell")
    }
    
    func getDataFromAPICoinDesk() {
        guard let url = URL(string: "https://api.coindesk.com/v1/bpi/currentprice.json") else {
                print("Khong co data tr ve")
                return
        }
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default,
                   headers: nil, interceptor: nil, requestModifier: nil) .responseJSON{ respone in
            if let data = respone.value as? [String: Any] {
                let coin = data.map({_ in CoinDesk.deserialize(from: data)! })
                self.arrData = coin
                self.priceTableView.reloadData()
            }
        }
    }
}

extension CurrentPriceVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "priceCell") as! PriceCell
        let data = arrData[indexPath.row]
        cell.lbUpdated.text = data.time.updated
        cell.lbUpdatedISO.text = data.time.updatedISO
        cell.lbUpDateDuk.text = data.time.updateduk
        cell.lbDisclaimer.text = data.disclaimer
        cell.lbChartName.text = data.chartName
        cell.lbUCode.text = data.bpi.USD.code
        cell.lbUSymbol.text = data.bpi.USD.symbol
        cell.lbURate.text = data.bpi.USD.rate
        cell.lbUDescription.text = data.bpi.USD.description
        cell.lbUrate_float.text = "\(data.bpi.USD.rate_float)"
        cell.lbECode.text = data.bpi.GBP.code
        cell.lbESymbol.text = data.bpi.GBP.symbol
        cell.lbERate.text = data.bpi.GBP.rate
        cell.lbEDescription.text = data.bpi.GBP.description
        cell.lbERate_float.text = "\(data.bpi.EUR.rate_float)"
        cell.lbGCode.text = data.bpi.GBP.code
        cell.lbGSymbol.text = data.bpi.GBP.symbol
        cell.lbGRate.text = data.bpi.GBP.rate
        cell.lbGDescription.text = data.bpi.GBP.description
        cell.lbGRate_float.text = "\(data.bpi.GBP.rate_float)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 725
    }
}
